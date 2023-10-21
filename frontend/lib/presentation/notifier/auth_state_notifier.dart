import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/presentation/notifier/api_client_state_notifier.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

part 'auth_state_notifier.freezed.dart';

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(ref.watch(firebaseAuthServiceProvider),
      ref.watch(accountRepositoryProvider), ref.watch(apiClientStateProvider));
});

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(String token) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(Exception e) = _Error;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  final FirebaseAuthService _firebaseAuthService;
  final AccountRepository _accountRepository;
  final ApiClient _apiClient;

  AuthStateNotifier(
      this._firebaseAuthService, this._accountRepository, this._apiClient)
      : super(const AuthState.initial());

  Future<void> initialize() async {
    try {
      User? firebaseUser = _firebaseAuthService.currentUser;
      if (firebaseUser == null) {
        state = const AuthState.unauthenticated();
        return;
      }

      String? idToken = await firebaseUser.getIdToken();
      if (idToken == null) {
        state = const AuthState.unauthenticated();
        return;
      }
      _apiClient.addDefaultHeader('Authorization', 'Bearer $idToken');

      final loginResponse = await _accountRepository.login();

      if (loginResponse == null) {
        state = const AuthState.unauthenticated();
        return;
      }
      state = AuthState.authenticated(loginResponse.token);
    } on Exception catch (e) {
      state = AuthState.error(e);
    }
  }

  Future<void> createAnounymouslyUser(String userName) async {
    try {
      User? firebaseUser = _firebaseAuthService.currentUser;
      firebaseUser ??= await _firebaseAuthService.signInAnonymously();

      String? idToken = await firebaseUser!.getIdToken();
      if (idToken == null) {
        throw Exception();
      }
      _apiClient.addDefaultHeader('Authorization', 'Bearer $idToken');
      final request = CreateUserRequest(name: userName);
      final response = await _accountRepository.createUser(request);
      if (response == null) {
        throw Exception();
      }
      state = AuthState.authenticated(response.token);
    } on Exception catch (e) {
      // FIXME: エラー処理 ここで処理するか上層にあげるか
      debugPrint(e.toString());
    }
  }

  AuthState get currentState => state;
}
