import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/application/usecase/match_with_opponent_usecase_impl.dart';
import 'package:frontend/domain/usecase/match_with_opponent_usecase.dart';

part 'match_make_page_state_notifier.freezed.dart';

@freezed
class MatchMakeState with _$MatchMakeState {
  const factory MatchMakeState.initial() = MatchMakeInitial;
  const factory MatchMakeState.loading() = MatchMakeLoading;
  const factory MatchMakeState.matched(String roomId) = MatchMakeMatched;
  const factory MatchMakeState.error(String message) = MatchMakeError;
}

class MatchMakePageStateNotifier extends StateNotifier<MatchMakeState> {
  final MatchWithOpponentUseCase _matchWithOpponentUseCase;

  MatchMakePageStateNotifier(this._matchWithOpponentUseCase)
      : super(const MatchMakeState.initial());

  Future<void> searchForOpponent(BuildContext context, String userId) async {
    // ローディング状態をセット
    state = const MatchMakeState.loading();
    // マッチング処理を実行
    state = await _matchWithOpponentUseCase(userId);
  }
}

final matchMakePageStateNotifierProvider =
    StateNotifierProvider<MatchMakePageStateNotifier, MatchMakeState>((ref) {
  final matchWithOpponentUseCase = ref.watch(matchWithOpponentUseCaseProvider);
  return MatchMakePageStateNotifier(matchWithOpponentUseCase);
});
