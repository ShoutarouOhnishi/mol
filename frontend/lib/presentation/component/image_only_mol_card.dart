import 'package:flutter/material.dart';
import 'package:frontend/presentation/notifier/battle_state_notifier.dart';
import 'package:frontend/presentation/state/battle_state.dart';
import 'package:frontend/presentation/state/mol_card.dart';

class ImageOnlyMolCard extends StatelessWidget {
  final MolCard card;
  final BattleStateNotifier battleStateNotifier;

  const ImageOnlyMolCard(
      {Key? key, required this.card, required this.battleStateNotifier})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final battleState = battleStateNotifier.currentState;
    final isTemporarilySelected = battleState.battlePhase ==
            const BattlePhase.playerCardTemporarilySelected() &&
        battleState.temporarilySelectedCard == card;
    return GestureDetector(
      onTap: () => battleStateNotifier.temporarilySelectCard(card),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: isTemporarilySelected ? 1.0 : 0.2,
          ),
          color: Colors.black,
        ),
        child: Padding(
          padding: EdgeInsets.all(
              isTemporarilySelected ? 1.0 : 0.2), // 枠線が太くなった分、パディングを増やす
          child: Column(
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  child: Image.asset(card.cardImage, fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
