import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/constant/room.dart';
import 'package:frontend/presentation/component/image_only_mol_card.dart';
import 'package:frontend/presentation/component/mol_card.dart' as component;
import 'package:frontend/presentation/component/time_keeper_indicator.dart';
import 'package:frontend/presentation/notifier/battle_state_notifier.dart';
import 'package:frontend/presentation/notifier/providers.dart';
import 'package:frontend/presentation/state/battle_state.dart';
import 'package:frontend/presentation/state/mol_card.dart' as state;
import 'package:frontend/presentation/style/app_style.dart';

class RoomPage extends ConsumerStatefulWidget {
  const RoomPage({super.key, required this.roomId});

  final String roomId;

  @override
  ConsumerState<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends ConsumerState<RoomPage> {
  late final BattleStateNotifier battleStateNotifier;

  @override
  void initState() {
    super.initState();
    battleStateNotifier = ref.read(battleStateNotifierProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      battleStateNotifier.initialize(widget.roomId);
    });
  }

  final handOfCards = [
    state.MolCard(
      cardName: '炎の剣',
      cardImage: 'assets/images/cards/flame_sword.png',
      cardType: '攻撃',
      cardEffect: '攻15',
      cardDescription: '相手に火属性のダメージを与える',
    ),
    state.MolCard(
      cardName: '氷の盾',
      cardImage: 'assets/images/cards/ice_shield.png',
      cardType: '防御',
      cardEffect: '守10',
      cardDescription: '氷属性の攻撃を防ぐ',
    ),
    state.MolCard(
      cardName: '雷撃',
      cardImage: 'assets/images/cards/thunder_strike.png',
      cardType: '攻撃',
      cardEffect: '攻20',
      cardDescription: '相手に雷属性のダメージを与える',
    ),
    state.MolCard(
      cardName: '大地の恵み',
      cardImage: 'assets/images/cards/earth_blessing.png',
      cardType: '回復',
      cardEffect: '回20',
      cardDescription: 'HPを少し回復する',
    ),
    state.MolCard(
      cardName: '風の加護',
      cardImage: 'assets/images/cards/wind_protection.png',
      cardType: '防御',
      cardEffect: '守5',
      cardDescription: '攻撃を回避しやすくなる',
    ),
    state.MolCard(
      cardName: '水流の罠',
      cardImage: 'assets/images/cards/water_trap.png',
      cardType: '罠',
      cardEffect: '罠',
      cardDescription: '相手の次のターンをスキップさせる',
    ),
    state.MolCard(
      cardName: '炎の精霊',
      cardImage: 'assets/images/cards/fire_spirit.png',
      cardType: '召喚',
      cardEffect: '攻10 守5',
      cardDescription: '炎の精霊を召喚する',
    ),
    state.MolCard(
      cardName: '氷の結界',
      cardImage: 'assets/images/cards/ice_barrier.png',
      cardType: '防御',
      cardEffect: '守15',
      cardDescription: '全ての攻撃を一定確率で防ぐ',
    ),
    state.MolCard(
      cardName: '雷の怒り',
      cardImage: 'assets/images/cards/thunder_rage.png',
      cardType: '攻撃',
      cardEffect: '攻25',
      cardDescription: '強力な雷属性のダメージを与える',
    ),
    state.MolCard(
      cardName: '大地の壁',
      cardImage: 'assets/images/cards/earth_wall.png',
      cardType: '防御',
      cardEffect: '守20',
      cardDescription: '大地を使って攻撃を防ぐ',
    ),
    state.MolCard(
      cardName: '風の矢',
      cardImage: 'assets/images/cards/wind_arrow.png',
      cardType: '攻撃',
      cardEffect: '攻5',
      cardDescription: '素早い風の矢で攻撃する',
    ),
    state.MolCard(
      cardName: '水の癒し',
      cardImage: 'assets/images/cards/water_healing.png',
      cardType: '回復',
      cardEffect: '回15',
      cardDescription: 'HPを回復する',
    ),
    state.MolCard(
      cardName: '炎の爆発',
      cardImage: 'assets/images/cards/fire_explosion.png',
      cardType: '攻撃',
      cardEffect: '攻30',
      cardDescription: '大きな炎で広範囲を攻撃する',
    ),
    state.MolCard(
      cardName: '氷の矢',
      cardImage: 'assets/images/cards/ice_arrow.png',
      cardType: '攻撃',
      cardEffect: '攻10',
      cardDescription: '鋭い氷の矢で攻撃する',
    ),
    state.MolCard(
      cardName: '雷の盾',
      cardImage: 'assets/images/cards/thunder_shield.png',
      cardType: '防御',
      cardEffect: '守10',
      cardDescription: '雷を纏った盾で防御する',
    ),
    state.MolCard(
      cardName: '大地の力',
      cardImage: 'assets/images/cards/earth_power.png',
      cardType: '強化',
      cardEffect: '攻5 守5',
      cardDescription: '大地の力で自身を強化する',
    ),
    state.MolCard(
      cardName: '風の舞',
      cardImage: 'assets/images/cards/wind_dance.png',
      cardType: '回避',
      cardEffect: '回避',
      cardDescription: '次に受ける攻撃を確実に回避する',
    ),
    state.MolCard(
      cardName: '水の盾',
      cardImage: 'assets/images/cards/water_shield.png',
      cardType: '防御',
      cardEffect: '守10',
      cardDescription: '水の盾で攻撃を防ぐ',
    ),
    state.MolCard(
      cardName: '炎の嵐',
      cardImage: 'assets/images/cards/fire_storm.png',
      cardType: '攻撃',
      cardEffect: '攻35',
      cardDescription: '猛烈な炎の嵐で攻撃する',
    ),
    state.MolCard(
      cardName: '氷の嵐',
      cardImage: 'assets/images/cards/ice_storm.png',
      cardType: '攻撃',
      cardEffect: '攻30',
      cardDescription: '冷たい氷の嵐で攻撃する',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final battleState = ref.watch(battleStateNotifierProvider);
    final battlePhase = battleState.battlePhase;
    final playerName =
        battleState.player != null ? battleState.player!.name : '';
    final opponentName =
        battleState.opponent != null ? battleState.opponent!.name : '';

    ref.listen<BattleState>(
      battleStateNotifierProvider,
      (_, newState) {
        newState.battlePhase.when(initial: () {
          debugPrint('initial');
        }, opponentTurnStarted: () {
          debugPrint('opponentTurnStarted');
        }, opponentTurnFinished: () {
          debugPrint('opponentTurnFinished');
        }, playerTurnStarted: () {
          debugPrint('playerTurnStarted');
        }, playerTurnFinished: () {
          debugPrint('playerTurnFinished');
        }, playerCardSelectable: () {
          debugPrint('cardSelectable');
        }, playerCardTemporarilySelected: () {
          debugPrint('cardTemporarilySelected');
          // TODO: フィールドにカードを表示する
        }, playerCardSelected: () {
          debugPrint('cardSelected');
        }, playerCounterCardSelectable: () {
          debugPrint('cardSelectable');
        }, playerCounterCardSelected: () {
          debugPrint('cardSelected');
        }, opponentCounterCardSelectable: () {
          debugPrint('cardSelectable');
        }, opponentCounterCardSelected: () {
          debugPrint('cardSelected');
        }, opponentCardSelectable: () {
          debugPrint('cardSelected');
        }, opponentCardSelected: () {
          debugPrint('cardSelected');
        }, error: (error) {
          debugPrint('error');
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(kTitleTxt, style: AppStyles.headline),
      ),
      body: Column(
        children: [
          TimeKeeperIndicator(
              time: battlePhase == const BattlePhase.playerCardSelectable() ||
                      battlePhase ==
                          const BattlePhase.playerCardTemporarilySelected()
                  ? 30
                  : null),
          SizedBox(
            height: 250,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 0.5,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: Opacity(
                      opacity: battlePhase ==
                              const BattlePhase.playerCardTemporarilySelected()
                          ? 0.9
                          : 1.0,
                      child: Container(
                        color: battlePhase ==
                                const BattlePhase
                                    .playerCardTemporarilySelected()
                            ? Colors.grey[900]
                            : Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // TODO: stateの比較を別で持たせるなどして簡潔にする
                            if (battlePhase ==
                                    const BattlePhase
                                        .playerCardTemporarilySelected() ||
                                battlePhase ==
                                    const BattlePhase.playerCardSelected() ||
                                battlePhase ==
                                    const BattlePhase.opponentTurnStarted() ||
                                battlePhase ==
                                    const BattlePhase
                                        .opponentCounterCardSelectable() ||
                                battlePhase ==
                                    const BattlePhase
                                        .opponentCounterCardSelected())
                              Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  child:
                                      Text(playerName, style: AppStyles.body)),
                            if (battlePhase ==
                                    const BattlePhase
                                        .playerCardTemporarilySelected() ||
                                battlePhase ==
                                    const BattlePhase.playerCardSelected() ||
                                battlePhase ==
                                    const BattlePhase.opponentTurnStarted() ||
                                battlePhase ==
                                    const BattlePhase
                                        .opponentCounterCardSelectable() ||
                                battlePhase ==
                                    const BattlePhase
                                        .opponentCounterCardSelected())
                              const SizedBox(height: 5),
                            if (battlePhase ==
                                const BattlePhase
                                    .playerCardTemporarilySelected())
                              component.MolCard(
                                  card: battleState.temporarilySelectedCard!,
                                  battleStateNotifier: battleStateNotifier),
                            if (battlePhase ==
                                    const BattlePhase.playerCardSelected() ||
                                battlePhase ==
                                    const BattlePhase.opponentTurnStarted() ||
                                battlePhase ==
                                    const BattlePhase
                                        .opponentCounterCardSelectable() ||
                                battlePhase ==
                                    const BattlePhase
                                        .opponentCounterCardSelected())
                              component.MolCard(
                                  card: battleState.selectedCard!,
                                  battleStateNotifier: battleStateNotifier),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: battlePhase ==
                                const BattlePhase.playerCardSelected() ||
                            battlePhase ==
                                const BattlePhase.opponentTurnStarted() ||
                            battlePhase ==
                                const BattlePhase
                                    .opponentCounterCardSelectable() ||
                            battlePhase ==
                                const BattlePhase.opponentCounterCardSelected()
                        ? Colors.white
                        : Colors.transparent,
                    size: 48.0,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (battlePhase ==
                                const BattlePhase
                                    .opponentCounterCardSelected() ||
                            battlePhase ==
                                const BattlePhase.opponentCardSelected())
                          Text(opponentName, style: AppStyles.body),
                        if (battlePhase ==
                                const BattlePhase
                                    .opponentCounterCardSelected() ||
                            battlePhase ==
                                const BattlePhase.opponentCardSelected())
                          const SizedBox(height: 5),
                        if (battlePhase ==
                                const BattlePhase
                                    .opponentCounterCardSelected() ||
                            battlePhase ==
                                const BattlePhase.opponentCardSelected())
                          component.MolCard(
                              card: battleState.selectedCard!,
                              battleStateNotifier: battleStateNotifier),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 0.5,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      (MediaQuery.of(context).size.width / 70).floor(),
                  childAspectRatio: 70 / 70,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ImageOnlyMolCard(
                          card: handOfCards[index],
                          battleStateNotifier: battleStateNotifier),
                    ],
                  );
                },
                itemCount: 10,
              ),
            ),
          ),
          // 現在のDataTable
          Row(
            children: [
              Expanded(
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('名前', style: AppStyles.body)),
                    DataColumn(label: Text('HP', style: AppStyles.body)),
                    DataColumn(label: Text('MP', style: AppStyles.body)),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text(opponentName, style: AppStyles.body)),
                      DataCell(Text(battleState.opponentHp.toString(),
                          style: AppStyles.body)),
                      DataCell(Text(battleState.opponentMp.toString(),
                          style: AppStyles.body)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text(playerName, style: AppStyles.body)),
                      DataCell(Text(battleState.playerHp.toString(),
                          style: AppStyles.body)),
                      DataCell(Text(battleState.playerMp.toString(),
                          style: AppStyles.body)),
                    ]),
                  ],
                ),
              ),
              // Card(
              //   child: Container(
              //     width: 100, // ここに適切な幅を指定します
              //     height: 100, // ここに適切な高さを指定します
              //     child: AspectRatio(
              //       aspectRatio: 1.0,
              //       child: Center(
              //         child: Text('カード'),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
