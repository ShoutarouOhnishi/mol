import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/infrastructure/repository/account_repository.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

part 'initial_page_state_notifier.freezed.dart';

@freezed
class InitialPageState with _$InitialPageState {
  const factory InitialPageState({
    @Default(false) bool isLoading,
    @Default('ゲスト') String userName,
  }) = _InitialPageState;
}

class InitialPageStateNotifier extends StateNotifier<InitialPageState> {
  final AccountRepository _accountRepository;
  final FirebaseAuthService _firebaseAuthService;
  final AuthStateNotifier _authStateNotifier;

  InitialPageStateNotifier(this._accountRepository, this._firebaseAuthService,
      this._authStateNotifier)
      : super(const InitialPageState());

  Future<void> createAnonymouslyUser() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    try {
      _authStateNotifier.createAnonymouslyUser(state.userName);
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

final initialPageStateNotifierProvider = StateNotifierProvider.autoDispose<
    InitialPageStateNotifier, InitialPageState>((ref) {
  final accountRepository = ref.watch(accountRepositoryProvider);
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final authStateNotifier = ref.read(authStateProvider.notifier);
  return InitialPageStateNotifier(
      accountRepository, firebaseAuthService, authStateNotifier);
});
