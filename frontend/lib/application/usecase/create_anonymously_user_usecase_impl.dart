import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frontend/domain/repository/user_repository.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/state/auth_state.dart';

class CreateAnonymouslyUserUseCaseImpl implements CreateAnonymouslyUserUseCase {
  final FirebaseAuthService _firebaseAuthService;
  final UserRepository _userRepository;
  final ApiClient _apiClient;

  CreateAnonymouslyUserUseCaseImpl(
      this._firebaseAuthService, this._userRepository, this._apiClient);

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
      final request = CreateUser(name: userName);
      final response = await _userRepository.createUser(request);
      if (response == null) {
        return const AuthState(event: AuthStateUIEvent.unauthenticated());
      }
      _apiClient.addDefaultHeader('Authorization', 'Bearer ${response.token}');
      return AuthState(
          token: response.token,
          user: response.user,
          event: AuthStateUIEvent.authenticated(response.token));
    } on Exception catch (e) {
      debugPrint(e.toString());
      return AuthState(event: AuthStateUIEvent.error(e));
    }
  }
}
