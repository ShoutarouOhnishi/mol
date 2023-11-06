import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/presentation/state/initial_page_state.dart';

class InitialPageStateNotifier extends StateNotifier<InitialPageState> {
  final AuthStateNotifier _authStateNotifier;

  InitialPageStateNotifier(this._authStateNotifier)
      : super(const InitialPageState());

  Future<void> createAnonymouslyUser() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    try {
      await _authStateNotifier.createAnonymouslyUser(state.userName);
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
