import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/application/usecase/create_anonymously_user_usecase_impl.dart';
import 'package:frontend/application/usecase/get_user_auth_state_usecase_impl.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
part 'auth_state_notifier.freezed.dart';

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final getUserStateUseCase = ref.watch(getUserAuthStateUseCaseProvider);
  final createAnonymouslyUserUseCase =
      ref.watch(createAnonymouslyUserUseCaseProvider);
  return AuthStateNotifier(getUserStateUseCase, createAnonymouslyUserUseCase);
});

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.authenticated(String token) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(Exception e) = _Error;
}

class AuthStateNotifier extends StateNotifier<AuthState> {
  final GetUserAuthStateUseCase _getUserAuthStateUseCase;
  final CreateAnonymouslyUserUseCase _createAnonymouslyUserUseCase;

  AuthStateNotifier(
      this._getUserAuthStateUseCase, this._createAnonymouslyUserUseCase)
      : super(const AuthState.initial());

  Future<void> syncUserAuthState() async {
    state = await _getUserAuthStateUseCase();
  }

  Future<void> createAnonymouslyUser(String userName) async {
    state = await _createAnonymouslyUserUseCase(userName);
  }

  AuthState get currentState => state;
}
