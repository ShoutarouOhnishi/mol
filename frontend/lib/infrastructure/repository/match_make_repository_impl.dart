import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/repository/match_make_repository.dart';
import 'package:intl/intl.dart';

class MatchMakeRepositoryImpl implements MatchMakeRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> addToWaitingList(String userId) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd hh:mm:ss').format(now);
    return _firestore
        .collection('waiting_users')
        .doc(userId)
        .set({'date': formattedDate});
  }

  @override
  Future<String?> getOldestWaitingUserId() async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('waiting_users')
        .orderBy('date', descending: false) // 日付の昇順でソート
        .limit(1) // 一番古いもの1件だけを取得
        .get();

    // snapshot.docsが空でなければ、最初のドキュメントのIDを返す
    return querySnapshot.docs.isNotEmpty ? querySnapshot.docs.first.id : null;
  }

  @override
  Future<void> removeFromWaitingList(String userId) {
    return _firestore.collection('waiting_users').doc(userId).delete();
  }

  @override
  Future<DocumentReference> createRoom(Map<String, dynamic> roomData) {
    return _firestore.collection('rooms').add(roomData);
  }

  // マッチング時にルームを作成するメソッド
  @override
  Future<String> createMatchedRoom(String user1, String user2) async {
    final roomData = {'user1': user1, 'user2': user2};
    final roomRef = _firestore.collection('rooms').add(roomData);
    String roomId = (await roomRef).id;

    // 待機リストのユーザー情報にルームIDを追加
    await _firestore
        .collection('waiting_users')
        .doc(user2)
        .set({'roomId': roomId});

    return roomId;
  }

  @override
  void observeWaitingList(
      String waitingUserId, void Function(String roomId) onMatchFound) {
    _firestore
        .collection('waiting_users')
        .doc(waitingUserId)
        .snapshots()
        .listen((documentSnapshot) {
      if (documentSnapshot.exists) {
        final roomId = documentSnapshot.data()?["roomId"];
        if (roomId != null) {
          onMatchFound(roomId);
        }
      }
    });
  }
}
