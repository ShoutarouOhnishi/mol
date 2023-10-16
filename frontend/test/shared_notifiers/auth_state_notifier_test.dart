import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:frontend/shared_notifiers/auth_state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/repositories/account_repository.dart';
import 'package:frontend/services/firebase_auth_service.dart';
import 'package:openapi/api.dart';
import 'auth_state_notifier_test.mocks.dart';

@GenerateMocks([FirebaseAuthService, AccountRepository, User, ApiClient])
void main() {
  group('initialize', () {
    late MockFirebaseAuthService mockFirebaseAuthService;
    late MockAccountRepository mockAccountRepository;
    late MockApiClient mockApiClient;
    late AuthStateNotifier authStateNotifier;

    setUp(() {
      mockFirebaseAuthService = MockFirebaseAuthService();
      mockAccountRepository = MockAccountRepository();
      mockApiClient = MockApiClient();
      authStateNotifier = AuthStateNotifier(
          mockFirebaseAuthService, mockAccountRepository, mockApiClient);
    });

    test('FirebaseUserが取得できない場合にunauthenticatedとなる', () async {
      when(mockFirebaseAuthService.currentUser).thenReturn(null);

      await authStateNotifier.initialize();

      authStateNotifier.currentState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => expect(true, true), // Expected state
        error: (message) => fail('Should not be error state'),
      );
    });

    test('idTokenが取得できない場合にunauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken()).thenAnswer((_) => Future.value(null));

      await authStateNotifier.initialize();

      authStateNotifier.currentState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => expect(true, true), // Expected state
        error: (message) => fail('Should not be error state'),
      );
    });

    test('バックエンド側でログインできなかった場合にunauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken()).thenAnswer((_) => Future.value('idToken'));
      when(mockAccountRepository.login()).thenAnswer((_) async => null);

      await authStateNotifier.initialize();

      authStateNotifier.currentState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => expect(true, true), // Expected state
        error: (message) => fail('Should not be error state'),
      );
    });

    test('ログイン成功時にauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken())
          .thenAnswer((_) async => Future.value('idToken'));
      when(mockAccountRepository.login())
          .thenAnswer((_) async => LoginResponse(token: 'token', userId: 1));

      await authStateNotifier.initialize();

      authStateNotifier.currentState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => expect(true, true),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => fail('Should not be error state'),
      );
    });

    test('Exception発生時にerrorとなる', () async {
      when(mockFirebaseAuthService.currentUser)
          .thenThrow(Exception('Error occurred'));

      await authStateNotifier.initialize();

      authStateNotifier.currentState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => expect(true, true),
      );
    });
  });
}
