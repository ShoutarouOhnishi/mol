import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/repositories/match_make_repository.dart';
import 'package:frontend/repositories/room_repository.dart';

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

  Future<void> searchForOpponent(String userId) async {
    // 1. ローディング状態をセット
    state = const MatchMakeState.loading();

    // 2. 待機中のユーザーを探す
    final waitingUsers = await _matchMakerepository.waitingUsersStream.first;
    String opponentId =
        waitingUsers.firstWhere((id) => id != userId, orElse: () => '');

    if (opponentId != '') {
      // 3. マッチング相手が見つかった場合、対戦ルームを作成
      final roomData = {'user1': userId, 'user2': opponentId};
      final roomRef = _matchMakerepository.createRoom(roomData);

      // 4. 待機リストからマッチング相手を削除
      await _matchMakerepository.removeFromWaitingList(opponentId);

      // 5. 対戦ルームへ遷移
      // _navigateToRoom(roomRef.key!);
    } else {
      // 6. 待機リストに追加して、待機状態をセット
      await _matchMakerepository.addToWaitingList(userId);
      state = const MatchMakeState.waiting();
      _matchMakerepository.observeWaitingUser(userId, (() {
        // TODO: マッチングしたときの処理
      }));
    }
  }

  // void _navigateToRoom(BuildContext context, String roomId) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => RoomPage(roomId: roomId),
  //     ),
  //   );
  // }
}

final matchMakeViewModelProvider =
    StateNotifierProvider<MatchMakeViewModel, MatchMakeState>((ref) {
  final matchMakeRepository = ref.watch(matchMakeRepositoryProvider);
  final roomRepository = ref.watch(roomRepositoryProvider);
  return MatchMakeViewModel(matchMakeRepository, roomRepository);
});
