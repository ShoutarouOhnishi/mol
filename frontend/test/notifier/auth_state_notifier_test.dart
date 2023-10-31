import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'auth_state_notifier_test.mocks.dart';

@GenerateMocks([GetUserAuthStateUseCase, CreateAnonymouslyUserUseCase])
void main() {
  group('syncUserAuthState', () {
    late AuthStateNotifier authStateNotifier;
    late MockGetUserAuthStateUseCase mockGetUserAuthStateUseCase;
    setUp(() {
      mockGetUserAuthStateUseCase = MockGetUserAuthStateUseCase();
      authStateNotifier = AuthStateNotifier(
          mockGetUserAuthStateUseCase, MockCreateAnonymouslyUserUseCase());
    });

    test('syncUserAuthStateでGetUserAuthStateUserCaseが実行されている', () async {
      when(mockGetUserAuthStateUseCase.call()).thenAnswer((_) async =>
          const AuthState(event: AuthStateUIEvent.unauthenticated()));

      await authStateNotifier.syncUserAuthState();

      verify(mockGetUserAuthStateUseCase.call()).called(1);
    });
  });

  group('createAnonymouslyUser', () {
    late AuthStateNotifier authStateNotifier;
    late MockCreateAnonymouslyUserUseCase mockCreateAnonymouslyUserUseCase;
    setUp(() {
      mockCreateAnonymouslyUserUseCase = MockCreateAnonymouslyUserUseCase();
      authStateNotifier = AuthStateNotifier(
          MockGetUserAuthStateUseCase(), mockCreateAnonymouslyUserUseCase);
    });

    test('syncUserAuthStateでGetUserAuthStateUserCaseが実行されている', () async {
      const testUserName = 'testUserName';
      when(mockCreateAnonymouslyUserUseCase.call(testUserName)).thenAnswer(
          (_) async =>
              const AuthState(event: AuthStateUIEvent.unauthenticated()));

      await authStateNotifier.createAnonymouslyUser(testUserName);

      verify(mockCreateAnonymouslyUserUseCase.call(testUserName)).called(1);
    });
  });
}
