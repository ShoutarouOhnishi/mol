import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:frontend/domain/repository/match_make_repository.dart';
import 'package:frontend/domain/usecase/match_with_opponent_usecase.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';

class MatchWithOpponentUseCaseImpl implements MatchWithOpponentUseCase {
  final MatchMakeRepository _matchMakeRepository;

  MatchWithOpponentUseCaseImpl(
    this._matchMakeRepository,
  );

  @override
  Future<MatchMakeState> call(String userId) async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    final completer = Completer<String>();

    try {
      // TODO: 3端末でトランザクション検証
      await firestore.runTransaction((transaction) async {
        // 待機中のユーザーを探す
        // TODO: 先入先出ができているか確認
        String? waitingUserId =
            await _matchMakeRepository.getOldestWaitingUserId();

        if (waitingUserId != null) {
          // マッチング相手が見つかった場合、対戦ルームを作成
          final roomId = await _matchMakeRepository.createMatchedRoom(
              userId, waitingUserId);

          // 待機リストから両方のユーザーを削除
          await _matchMakeRepository.removeFromWaitingList(userId);
          await _matchMakeRepository.removeFromWaitingList(waitingUserId);

          // 対戦ルームへ遷移
          return MatchMakeState.matched(roomId);
        } else {
          // 待機リストに追加
          await _matchMakeRepository.addToWaitingList(userId);
          // 待機リストを監視
          _matchMakeRepository.observeWaitingList(userId, (roomId) {
            completer.complete(roomId); // roomIdを使ってCompleterを完了する
          });
          // 受け取ったroomIdを返す
          await completer.future.then((roomId) {
            return MatchMakeState.matched(roomId);
          });
        }
      });
    } catch (e) {
      return MatchMakeState.error(e.toString());
    }

    return const MatchMakeState.error(
        'Matching processing failed for some reason.');
  }
}
