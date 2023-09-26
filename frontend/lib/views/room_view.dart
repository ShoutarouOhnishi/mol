import 'package:flutter/material.dart';

class RoomView extends StatelessWidget {
  final String roomId;

  RoomView({required this.roomId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('対戦ルーム: $roomId'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('対戦相手を待っています...'),
            // 必要なウィジェットやロジックをここに追加
          ],
        ),
      ),
    );
  }
}
