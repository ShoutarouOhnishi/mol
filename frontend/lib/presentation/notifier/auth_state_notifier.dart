import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/usecase/usecase_providers.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
import 'package:frontend/presentation/state/auth_state.dart';

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final getUserStateUseCase = ref.watch(getUserAuthStateUseCaseProvider);
  final createAnonymouslyUserUseCase =
      ref.watch(createAnonymouslyUserUseCaseProvider);
  return AuthStateNotifier(getUserStateUseCase, createAnonymouslyUserUseCase);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final GetUserAuthStateUseCase _getUserAuthStateUseCase;
  final CreateAnonymouslyUserUseCase _createAnonymouslyUserUseCase;

  AuthStateNotifier(
      this._getUserAuthStateUseCase, this._createAnonymouslyUserUseCase)
      : super(const AuthState());

  Future<void> syncUserAuthState() async {
    state = await _getUserAuthStateUseCase();
  }

  Future<void> createAnonymouslyUser(String userName) async {
    state = await _createAnonymouslyUserUseCase(userName);
  }

  AuthState get currentState => state;
}
