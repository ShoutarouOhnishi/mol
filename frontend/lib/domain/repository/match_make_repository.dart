import 'package:cloud_firestore/cloud_firestore.dart';

abstract class MatchMakeRepository {
  Future<void> addToWaitingList(String userId);
  Future<String?> getOldestWaitingUserId();
  Future<void> removeFromWaitingList(String userId);
  Future<DocumentReference> createRoom(Map<String, dynamic> roomData);
  Future<String> createMatchedRoom(String user1, String user2);
  void observeWaitingList(
      String waitingUserId, void Function(String roomId) onMatchFound);
}
