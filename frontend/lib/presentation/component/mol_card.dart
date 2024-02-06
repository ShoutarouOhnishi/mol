import 'package:flutter/material.dart';
import 'package:frontend/presentation/notifier/battle_state_notifier.dart';
import 'package:frontend/presentation/style/app_style.dart';
import 'package:frontend/presentation/state/mol_card.dart' as state;

class MolCard extends StatelessWidget {
  final state.MolCard card;
  final BattleStateNotifier battleStateNotifier;

  const MolCard(
      {Key? key, required this.card, required this.battleStateNotifier})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => battleStateNotifier.selectCard(
        const state.MolCard(
          // TODO: APIから取得する
          cardName: '魔力急増',
          cardImage: 'assets/images/cards/mana_surge.png',
          cardType: '魔法',
          cardEffect: '守9',
          cardDescription: 'MP消費なしで魔法を使用する',
        ),
      ),
      child: Container(
        width: 100,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
            width: 0.2,
          ),
          color: Colors.black,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12.0),
                ),
                child: Image.asset(card.cardImage, fit: BoxFit.fill),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5.0, top: 5.0, bottom: 0),
                child: Column(
                  children: <Widget>[
                    Text(card.cardName, style: AppStyles.body),
                    Text(card.cardEffect, style: AppStyles.caption),
                    Text(card.cardDescription, style: AppStyles.caption),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
