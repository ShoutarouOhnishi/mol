import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../view_models/room_view_model.dart';

class RoomMenuPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref.watch(roomProvider);
    final roomViewModel = ref.watch(roomProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Room')),
      body: Column(
        children: [
          // 部屋名表示
          if (room != null) Text('Room Name: ${room.name}'),
          // 部屋作成ボタン
          ElevatedButton(
            onPressed: () => roomViewModel.createRoom('New Room'),
            child: Text('Create Room'),
          ),
          // 部屋参加ボタン
          ElevatedButton(
            onPressed: () => roomViewModel.joinRoom(room?.id ?? ''),
            child: Text('Join Room'),
          ),
        ],
      ),
    );
  }
}
