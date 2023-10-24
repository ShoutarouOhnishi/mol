import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/usecase/create_anonymously_user_usecase_impl.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'create_anonymously_user_usecase_impl_test.mocks.dart';

@GenerateMocks([
  FirebaseAuthService,
  ApiClient,
  AccountRepository,
  User,
  CreateAnonymouslyUserUseCase
])
void main() {
  const userName = 'testUser';
  group('CreateAnonymouslyUserUseCase', () {
    late CreateAnonymouslyUserUseCaseImpl createAnonymouslyUserUseCaseImpl;
    late MockFirebaseAuthService mockFirebaseAuthService;
    late MockApiClient mockApiClient;
    late MockAccountRepository mockAccountRepository;
    setUp(() {
      mockFirebaseAuthService = MockFirebaseAuthService();
      mockApiClient = MockApiClient();
      mockAccountRepository = MockAccountRepository();

      createAnonymouslyUserUseCaseImpl = CreateAnonymouslyUserUseCaseImpl(
          mockFirebaseAuthService, mockAccountRepository, mockApiClient);
    });

    test('idTokenが取得できない場合にunauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken()).thenAnswer((_) => Future.value(null));

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => expect(true, true), // Expected state
        error: (message) => fail('Should not be error state'),
      );
    });

    test('バックエンド側でユーザーが作成できなかった場合にunauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken()).thenAnswer((_) => Future.value('idToken'));
      final request = CreateUserRequest(name: userName);
      when(mockAccountRepository.createUser(request))
          .thenAnswer((_) async => null);

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => expect(true, true), // Expected state
        error: (message) => fail('Should not be error state'),
      );
    });

    test('ユーザー作成成功時にauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken())
          .thenAnswer((_) async => Future.value('idToken'));
      final request = CreateUserRequest(name: userName);
      when(mockAccountRepository.createUser(request))
          .thenAnswer((_) async => CreateUserResponse(token: 'token'));

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => expect(true, true),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => fail('Should not be error state'),
      );
    });

    test('Exception発生時にerrorとなる', () async {
      when(mockFirebaseAuthService.currentUser)
          .thenThrow(Exception('Error occurred'));

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => expect(true, true),
      );
    });
  });
}
