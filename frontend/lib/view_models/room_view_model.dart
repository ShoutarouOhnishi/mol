import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/room.dart';
import '../repositories/room_repository.dart';

class RoomViewModel extends StateNotifier<Room?> {
  final RoomRepository roomRepository;

  RoomViewModel(this.roomRepository) : super(null);

  Future<void> createRoom(String name) async {
    final room = await roomRepository.createRoomInDatabase(name);
    state = room; // 更新された部屋の状態を保存
  }

  Future<void> joinRoom(String roomId) async {
    final room = await roomRepository.getRoomFromDatabase(roomId);
    state = room; // 更新された部屋の状態を保存
  }
}

final roomProvider = StateNotifierProvider<RoomViewModel, Room?>((ref) {
  final repository = ref.watch(roomRepositoryProvider);
  return RoomViewModel(repository);
});
