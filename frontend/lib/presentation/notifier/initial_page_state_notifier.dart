import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';

part 'initial_page_state_notifier.freezed.dart';

@freezed
class InitialPageState with _$InitialPageState {
  const factory InitialPageState({
    @Default(false) bool isLoading,
    @Default('ゲスト') String userName,
  }) = _InitialPageState;
}

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

final initialPageStateNotifierProvider = StateNotifierProvider.autoDispose<
    InitialPageStateNotifier, InitialPageState>((ref) {
  final authStateNotifier = ref.watch(authStateProvider.notifier);
  return InitialPageStateNotifier(authStateNotifier);
});
