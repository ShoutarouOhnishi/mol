import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';

part 'splash_page_state_notifier.freezed.dart';

final splashPageStateNotifierProvider =
    StateNotifierProvider.autoDispose<SplashPageStateNotifier, SplashPageState>(
        (ref) {
  return SplashPageStateNotifier(ref.watch(authStateProvider.notifier));
});

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState({
    @Default(false) bool isLoading,
    @Default([]) List<UiEvent> events,
  }) = _SplashPageState;
}

@freezed
class UiEvent with _$UiEvent {
  const factory UiEvent.onCompleteNotLogin() = OnCompleteNotLogin;

  const factory UiEvent.onCompleteLogin() = OnCompleteLogin;

  const factory UiEvent.onError(Exception e) = OnError;
}

/// 最低スプラッシュ表示時間
const _minimumSplashDuration = Duration(milliseconds: 1000);

class SplashPageStateNotifier extends StateNotifier<SplashPageState> {
  final AuthStateNotifier _authStateNotifier;
  SplashPageStateNotifier(this._authStateNotifier)
      : super(const SplashPageState());

  /// アプリ初期化処理実行
  Future<void> initialize() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);
    try {
      final st = DateTime.now().millisecondsSinceEpoch;

      // 最低1秒スプラッシュを表示する
      // 初期化処理に1秒以上かかっている場合は即時スプラッシュ非表示
      final et = DateTime.now().millisecondsSinceEpoch;
      final time = et - st;
      final remainDuration =
          _minimumSplashDuration - Duration(milliseconds: time);
      if (!remainDuration.isNegative) {
        await Future.delayed(remainDuration);
      }

      await _authStateNotifier.syncUserAuthState();

      List<UiEvent> events = [];
      _authStateNotifier.state.event.when(
        initial: () => events = [const UiEvent.onCompleteNotLogin()],
        authenticated: (_) => events = [const UiEvent.onCompleteLogin()],
        unauthenticated: () => events = [const UiEvent.onCompleteNotLogin()],
        error: (e) => events = [UiEvent.onError(e)],
      );
      state = state.copyWith(events: state.events + events);
    } on Exception catch (e) {
      state = state.copyWith(events: state.events + [UiEvent.onError(e)]);
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  void consumeEvent(UiEvent event) {
    state = state.copyWith(
      events: state.events.whereNot((e) => e == event).toList(),
    );
  }
}
