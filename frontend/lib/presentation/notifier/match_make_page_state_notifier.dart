import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/usecase/match_with_opponent_usecase.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';

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
