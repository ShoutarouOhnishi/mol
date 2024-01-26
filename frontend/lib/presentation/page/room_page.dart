import 'package:flutter/material.dart';
import 'package:frontend/constant/room.dart';
import 'package:frontend/presentation/style/app_style.dart';

class RoomPage extends StatelessWidget {
  final String roomId;

  const RoomPage({super.key, required this.roomId});

  @override
  Widget build(BuildContext context) {
    // 仮のデータを使用
    final String opponentName = '相手の名前';
    final int opponentHP = 100;
    final int opponentMP = 50;
    final String playerName = '自分の名前';
    final int playerHP = 100;
    final int playerMP = 50;

    return Scaffold(
      appBar: AppBar(
        title: const Text(kTitleTxt, style: AppStyles.headline),
      ),
      body: Column(
        children: [
          // 相手のカードフィールド
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 2.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(opponentName),
                          Card(
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: Center(
                                child: Text('カード1'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 2.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(opponentName),
                          Card(
                            child: AspectRatio(
                              aspectRatio: 1.0,
                              child: Center(
                                child: Text('カード2'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 自分のカードフィールド
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 6, right: 2.5, top: 2.5, bottom: 2.5),
              color: Colors.green,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: (MediaQuery.of(context).size.width / 5) /
                      (MediaQuery.of(context).size.height / 6), // 2行分の高さに合わせる
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Center(
                      child: Text('カード${index + 1}'),
                    ),
                  );
                },
                itemCount: 15,
              ),
            ),
          ),
          // 現在のDataTable
          DataTable(
            columns: const [
              DataColumn(label: Text('名前')),
              DataColumn(label: Text('HP')),
              DataColumn(label: Text('MP')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text(opponentName)),
                DataCell(Text(opponentHP.toString())),
                DataCell(Text(opponentMP.toString())),
              ]),
              DataRow(cells: [
                DataCell(Text(playerName)),
                DataCell(Text(playerHP.toString())),
                DataCell(Text(playerMP.toString())),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
