import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/application/usecase/create_anonymously_user_usecase_impl.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';

part 'initial_page_state_notifier.freezed.dart';

@freezed
class InitialPageState with _$InitialPageState {
  const factory InitialPageState({
    @Default(false) bool isLoading,
    @Default('ゲスト') String userName,
  }) = _InitialPageState;
}

class InitialPageStateNotifier extends StateNotifier<InitialPageState> {
  final CreateAnonymouslyUserUseCase _createAnonymouslyUserUseCase;

  InitialPageStateNotifier(this._createAnonymouslyUserUseCase)
      : super(const InitialPageState());

  Future<void> createAnonymouslyUser() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);

    try {
      _createAnonymouslyUserUseCase(state.userName);
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
  final createAnonymouslyUserUseCase =
      ref.watch(createAnonymouslyUserUseCaseProvider);
  return InitialPageStateNotifier(createAnonymouslyUserUseCase);
});
