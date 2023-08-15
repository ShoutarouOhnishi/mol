import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';

class MatchMakeRepository {
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();

  Future<void> addToWaitingList(String userId) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd hh:mm:ss').format(now);
    return _databaseRef.child('waiting_users').child(userId).set(formattedDate);
  }

  Stream<List<String>> get waitingUsersStream {
    return _databaseRef.child('waiting_users').onValue.map((event) {
      final waitingUsers =
          (event.snapshot.value as Map?)?.cast<String, dynamic>() ?? {};
      return waitingUsers.keys.toList();
    });
  }

  Future<void> removeFromWaitingList(String userId) {
    return _databaseRef.child('waiting_users').child(userId).remove();
  }

  DatabaseReference createRoom(Map<String, dynamic> roomData) {
    final roomRef = _databaseRef.child('rooms').push();
    roomRef.set(roomData);
    return roomRef;
  }

  // マッチング時にルームを作成するメソッド
  Future<String> createMatchedRoom(String user1, String user2) async {
    final roomData = {'user1': user1, 'user2': user2};
    final roomRef = _databaseRef.child('rooms').push();
    await roomRef.set(roomData);
    String roomId = roomRef.key!;

    // 待機リストのユーザー情報にルームIDを追加
    await _databaseRef
        .child('waiting_users')
        .child(user2)
        .set({'roomId': roomId});

    return roomId;
  }

  // TODO: トランザクション処理
  void observeWaitingList(
      String waitingUserId, void Function(String roomId) onMatchFound) {
    _databaseRef
        .child('waiting_users')
        .child(waitingUserId)
        .onValue
        .listen((event) {
      if (event.snapshot.value is Map) {
        final roomId = (event.snapshot.value as Map)["roomId"];
        onMatchFound(roomId);
      }
    });
  }
}

final matchMakeRepositoryProvider =
    Provider<MatchMakeRepository>((ref) => MatchMakeRepository());
