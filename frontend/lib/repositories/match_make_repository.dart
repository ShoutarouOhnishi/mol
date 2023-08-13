import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

class MatchMakeRepository {
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();

  Future<void> addToWaitingList(String userId) {
    return _databaseRef.child('waiting_users').child(userId).set(true);
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

  void observeWaitingUser(String userId, void Function() onMatchFound) {
    _databaseRef.child('waiting_users').child(userId).onValue.listen((event) {
      if (event.snapshot.value == null) {
        onMatchFound();
      }
    });
  }
}

final matchMakeRepositoryProvider =
    Provider<MatchMakeRepository>((ref) => MatchMakeRepository());
