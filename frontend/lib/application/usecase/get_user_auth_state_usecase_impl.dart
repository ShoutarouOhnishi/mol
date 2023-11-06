import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend/domain/repository/account_repository.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/state/auth_state.dart';

class GetUserAuthStateUseCaseImpl implements GetUserAuthStateUseCase {
  final FirebaseAuthService _firebaseAuthService;
  final ApiClient _apiClient;
  final AccountRepository _accountRepository;

  GetUserAuthStateUseCaseImpl(
      this._firebaseAuthService, this._apiClient, this._accountRepository);

  @override
  Future<AuthState> call() async {
    try {
      User? firebaseUser = _firebaseAuthService.currentUser;
      if (firebaseUser == null) {
        return const AuthState(event: AuthStateUIEvent.unauthenticated());
      }

      String? idToken = await firebaseUser.getIdToken();
      if (idToken == null) {
        return const AuthState(event: AuthStateUIEvent.unauthenticated());
      }
      _apiClient.addDefaultHeader('Authorization', 'Bearer $idToken');

      final loginResponse = await _accountRepository.login();

      if (loginResponse == null) {
        return const AuthState(event: AuthStateUIEvent.unauthenticated());
      }
      return AuthState(
          token: loginResponse.token,
          event: AuthStateUIEvent.authenticated(loginResponse.token));
    } on Exception catch (e) {
      return AuthState(event: AuthStateUIEvent.error(e));
    }
  }
}
