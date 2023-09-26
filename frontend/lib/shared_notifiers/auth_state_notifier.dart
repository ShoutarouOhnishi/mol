import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/repositories/account_repository.dart';
import 'package:frontend/services/firebase_auth_service.dart';
import 'package:openapi/api.dart';

part 'auth_state_notifier.freezed.dart';

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  return AuthStateNotifier(ref.watch(firebaseAuthServiceProvider),
      ref.watch(accountRepositoryProvider));
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

  AuthStateNotifier(this._firebaseAuthService, this._accountRepository)
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
      final loginResponse = await _accountRepository.login(idToken);

      if (loginResponse == null) {
        state = const AuthState.unauthenticated();
        return;
      }
      state = AuthState.authenticated(loginResponse.token);
    } on Exception catch (e) {
      state = AuthState.error(e);
    }
  }

  AuthState get currentState => state;
}
