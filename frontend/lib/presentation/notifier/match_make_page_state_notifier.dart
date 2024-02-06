import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/usecase/create_room_usecase.dart';
import 'package:frontend/domain/usecase/match_with_opponent_usecase.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';

class MatchMakePageStateNotifier extends StateNotifier<MatchMakeState> {
  final AuthStateNotifier _authStateNotifier;
  final MatchWithOpponentUseCase _matchWithOpponentUseCase;
  final CreateRoomUseCase _createRoomUseCase;

  MatchMakePageStateNotifier(this._authStateNotifier,
      this._matchWithOpponentUseCase, this._createRoomUseCase)
      : super(const MatchMakeState.initial());

  Future<void> searchForOpponent(BuildContext context, String userId) async {
    // ローディング状態をセット
    state = const MatchMakeState.loading();
    // マッチング処理を実行
    state = await _matchWithOpponentUseCase(userId);
  }

  void createRoom(String roomId) {
    // ルーム作成処理を実行 awaitせず非同期で実行
    _createRoomUseCase(_authStateNotifier.state, roomId);
  }
}
