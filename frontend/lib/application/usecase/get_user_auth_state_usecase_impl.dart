import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:frontend/presentation/notifier/api_client_state_notifier.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';

final getUserAuthStateUseCaseProvider =
    Provider<GetUserAuthStateUseCase>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final apiClient = ref.watch(apiClientStateProvider);
  final accountRepository = ref.watch(accountRepositoryProvider);
  return GetUserAuthStateUseCaseImpl(
      firebaseAuthService, apiClient, accountRepository);
});

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
        return const AuthState.unauthenticated();
      }

      String? idToken = await firebaseUser.getIdToken();
      if (idToken == null) {
        return const AuthState.unauthenticated();
      }
      _apiClient.addDefaultHeader('Authorization', 'Bearer $idToken');

      final loginResponse = await _accountRepository.login();

      if (loginResponse == null) {
        return const AuthState.unauthenticated();
      }
      return AuthState.authenticated(loginResponse.token);
    } on Exception catch (e) {
      return AuthState.error(e);
    }
  }
}
