import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/repositories/match_make_repository.dart';
import 'package:frontend/repositories/room_repository.dart';
import 'package:frontend/views/room_page.dart';

part 'match_make_view_model.freezed.dart';

@freezed
class MatchMakeState with _$MatchMakeState {
  const factory MatchMakeState.initial() = MatchMakeInitial;
  const factory MatchMakeState.loading() = MatchMakeLoading;
  const factory MatchMakeState.waiting() = MatchMakeWaiting;
  const factory MatchMakeState.error(String message) = MatchMakeError;
}

class MatchMakeViewModel extends StateNotifier<MatchMakeState> {
  final MatchMakeRepository _matchMakerepository;
  final RoomRepository _roomRepository;

  MatchMakeViewModel(this._matchMakerepository, this._roomRepository)
      : super(const MatchMakeState.initial());

  Future<void> searchForOpponent(BuildContext context, String userId) async {
    // 非同期処理の前にNavigatorへの参照を取得
    final navigator = Navigator.of(context);

    // 1. ローディング状態をセット
    state = const MatchMakeState.loading();

    // 2. 待機中のユーザーを探す
    // TODO: 先入先出ができているか確認
    final waitingUsers = await _matchMakerepository.waitingUsersStream.first;
    String waitingUserId =
        waitingUsers.firstWhere((id) => id != userId, orElse: () => '');

    if (waitingUserId != '') {
      // マッチング相手が見つかった場合、対戦ルームを作成
      final roomId =
          await _matchMakerepository.createMatchedRoom(userId, waitingUserId);

      // 待機リストから両方のユーザーを削除
      await _matchMakerepository.removeFromWaitingList(userId);
      await _matchMakerepository.removeFromWaitingList(waitingUserId);

      // 対戦ルームへ遷移
      _navigateToRoom(navigator, roomId);
    } else {
      // 待機リストに追加して、待機状態をセット
      await _matchMakerepository.addToWaitingList(userId);
      state = const MatchMakeState.waiting();
      // 待機リストを監視
      _matchMakerepository.observeWaitingList(userId, (roomId) {
        // このユーザーのためのルームへの遷移処理
        _navigateToRoom(navigator, roomId);
      });
    }
  }

  void _navigateToRoom(NavigatorState navigator, String roomId) {
    // 対戦ルームへ遷移
    navigator.push(
      MaterialPageRoute(
        builder: (context) => RoomPage(roomId: roomId),
      ),
    );
  }
}

final matchMakeViewModelProvider =
    StateNotifierProvider<MatchMakeViewModel, MatchMakeState>((ref) {
  final matchMakeRepository = ref.watch(matchMakeRepositoryProvider);
  final roomRepository = ref.watch(roomRepositoryProvider);
  return MatchMakeViewModel(matchMakeRepository, roomRepository);
});
