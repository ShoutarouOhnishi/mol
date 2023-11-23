import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/usecase/create_anonymously_user_usecase_impl.dart';
import 'package:frontend/domain/repository/user_repository.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'create_anonymously_user_usecase_impl_test.mocks.dart';

@GenerateMocks([
  FirebaseAuthService,
  ApiClient,
  UserRepository,
  User,
  CreateAnonymouslyUserUseCase
])
void main() {
  const userName = 'testUser';
  group('CreateAnonymouslyUserUseCase', () {
    late CreateAnonymouslyUserUseCaseImpl createAnonymouslyUserUseCaseImpl;
    late MockFirebaseAuthService mockFirebaseAuthService;
    late MockApiClient mockApiClient;
    late MockUserRepository mockUserRepository;
    setUp(() {
      mockFirebaseAuthService = MockFirebaseAuthService();
      mockApiClient = MockApiClient();
      mockUserRepository = MockUserRepository();

      createAnonymouslyUserUseCaseImpl = CreateAnonymouslyUserUseCaseImpl(
          mockFirebaseAuthService, mockUserRepository, mockApiClient);
    });

    test('idTokenが取得できない場合にunauthenticatedとなる', () async {
      final mockUser = MockUser();
      when(mockFirebaseAuthService.currentUser).thenReturn(mockUser);
      when(mockUser.getIdToken()).thenAnswer((_) => Future.value(null));

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.event.when(
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
      final request = CreateUser(name: userName);
      when(mockUserRepository.createUser(request))
          .thenAnswer((_) async => null);

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.event.when(
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
      final request = CreateUser(name: userName);
      when(mockUserRepository.createUser(request)).thenAnswer((_) async =>
          CreateUserResponse(
              token: 'token',
              user: DisclosedUser(
                  id: 1, name: 'name', createdAt: '', accessedAt: '')));

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

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

      final authState = await createAnonymouslyUserUseCaseImpl(userName);

      authState.event.when(
        initial: () => fail('Should not be initial state'),
        authenticated: (token) => fail('Should not be authenticated state'),
        unauthenticated: () => fail('Should not be unauthenticated state'),
        error: (message) => expect(true, true),
      );
    });
  });
}
