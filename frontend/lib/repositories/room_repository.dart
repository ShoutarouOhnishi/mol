import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';
import '../models/room.dart';

class RoomRepository {
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();

  Future<Room> createRoomInDatabase(String name) async {
    final roomRef = _databaseRef.child('rooms').push();
    final room = Room(id: roomRef.key!, name: name);
    await roomRef.set(room.toJson());
    return room;
  }

  Future<Room?> getRoomFromDatabase(String roomId) async {
    final event = await _databaseRef.child('rooms/$roomId').once();
    if (event.snapshot.value is Map<dynamic, dynamic>) {
      return Room.fromJson(
          Map<String, dynamic>.from(event.snapshot.value as Map));
    }
    return null;
  }
}

final roomRepositoryProvider =
    Provider<RoomRepository>((ref) => RoomRepository());
