import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:frontend/presentation/notifier/api_client_state_notifier.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';

final createAnonymouslyUserUseCaseProvider =
    Provider<CreateAnonymouslyUserUseCase>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);

  final accountRepository = ref.watch(accountRepositoryProvider);
  final apiClient = ref.watch(apiClientStateProvider);
  return CreateAnonymouslyUserUseCaseImpl(
      firebaseAuthService, accountRepository, apiClient);
});

class CreateAnonymouslyUserUseCaseImpl implements CreateAnonymouslyUserUseCase {
  final FirebaseAuthService _firebaseAuthService;
  final AccountRepository _accountRepository;
  final ApiClient _apiClient;

  CreateAnonymouslyUserUseCaseImpl(
      this._firebaseAuthService, this._accountRepository, this._apiClient);

  @override
  Future<AuthState> call(String userName) async {
    try {
      User? firebaseUser = _firebaseAuthService.currentUser;
      firebaseUser ??= await _firebaseAuthService.signInAnonymously();

      String? idToken = await firebaseUser!.getIdToken();
      if (idToken == null) {
        return const AuthState(event: AuthStateUIEvent.unauthenticated());
      }
      _apiClient.addDefaultHeader('Authorization', 'Bearer $idToken');
      final request = CreateUserRequest(name: userName);
      final response = await _accountRepository.createUser(request);
      if (response == null) {
        return const AuthState(event: AuthStateUIEvent.unauthenticated());
      }
      return AuthState(
          token: response.token,
          event: AuthStateUIEvent.authenticated(response.token));
    } on Exception catch (e) {
      debugPrint(e.toString());
      return AuthState(event: AuthStateUIEvent.error(e));
    }
  }
}
