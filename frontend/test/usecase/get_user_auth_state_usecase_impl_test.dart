import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/usecase/get_user_auth_state_usecase_impl.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'get_user_auth_state_usecase_impl_test.mocks.dart';

@GenerateMocks([
  FirebaseAuthService,
  ApiClient,
  AccountRepository,
  User,
  GetUserAuthStateUseCase,
  CreateAnonymouslyUserUseCase
])
void main() {
  group('GetUserAuthStateUseCaseImpl', () {
    late GetUserAuthStateUseCaseImpl getUserAuthStateUseCaseImpl;
    late MockFirebaseAuthService mockFirebaseAuthService;
    late MockApiClient mockApiClient;
    late MockAccountRepository mockAccountRepository;
    setUp(() {
      mockFirebaseAuthService = MockFirebaseAuthService();
      mockApiClient = MockApiClient();
      mockAccountRepository = MockAccountRepository();

      getUserAuthStateUseCaseImpl = GetUserAuthStateUseCaseImpl(
          mockFirebaseAuthService, mockApiClient, mockAccountRepository);
    });

    test('FirebaseUserが取得できない場合にunauthenticatedとなる', () async {
      when(mockFirebaseAuthService.currentUser).thenReturn(null);

      final authState = await getUserAuthStateUseCaseImpl();

      authState.event.when(
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

      final authState = await getUserAuthStateUseCaseImpl();

      authState.event.when(
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

      final authState = await getUserAuthStateUseCaseImpl();

      authState.event.when(
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

      final authState = await getUserAuthStateUseCaseImpl();

      authState.event.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => expect(true, true),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => fail('Should not be error state'),
      );
    });

    test('Exception発生時にerrorとなる', () async {
      when(mockFirebaseAuthService.currentUser)
          .thenThrow(Exception('Error occurred'));

      final authState = await getUserAuthStateUseCaseImpl();

      authState.event.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => expect(true, true),
      );
    });
  });
}
