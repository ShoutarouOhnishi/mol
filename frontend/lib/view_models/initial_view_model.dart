import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/repositories/account_repository.dart';
import 'package:frontend/services/firebase_auth_service.dart';
import 'package:frontend/shared_notifiers/auth_state_notifier.dart';
import 'package:openapi/api.dart';

part 'initial_view_model.freezed.dart';

@freezed
class InitialViewState with _$InitialViewState {
  const factory InitialViewState({
    @Default(false) bool isLoading,
    @Default('ゲスト') String userName,
  }) = _InitialViewState;
}

class InitialViewModel extends StateNotifier<InitialViewState> {
  final AccountRepository _accountRepository;
  final FirebaseAuthService _firebaseAuthService;
  final AuthStateNotifier _authStateNotifier;

  InitialViewModel(this._accountRepository, this._firebaseAuthService,
      this._authStateNotifier)
      : super(const InitialViewState());

  Future<void> initialize() async {
    if (state.isLoading) return;

    state = state.copyWith(isLoading: true);

    try {} on Exception catch (e) {
    } finally {}
  }

  Future<void> createAnounymouslyUser() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    try {
      User? firebaseUser = _firebaseAuthService.currentUser;
      firebaseUser ??= await _firebaseAuthService.signInAnonymously();

      String? idToken = await firebaseUser!.getIdToken();
      final request = CreateUserRequest(name: state.userName);
      final response = await _accountRepository.createUser(request, idToken!);
      if (response == null) {
        throw Exception();
      }
      _authStateNotifier.state = AuthState.authenticated(response.token);
    } on Exception catch (e) {
      // FIXME: エラー処理 ここで処理するか上層にあげるか
      debugPrint(e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void onUserNameChanged(String value) {
    state = state.copyWith(userName: value);
  }
}

final initialViewModelProvider =
    StateNotifierProvider.autoDispose<InitialViewModel, InitialViewState>(
        (ref) {
  final accountRepository = ref.watch(accountRepositoryProvider);
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final authStateNotifier = ref.read(authStateProvider.notifier);
  return InitialViewModel(
      accountRepository, firebaseAuthService, authStateNotifier);
});
