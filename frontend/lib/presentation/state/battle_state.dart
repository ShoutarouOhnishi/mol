import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/state/mol_card.dart';

part 'battle_state.freezed.dart';

@freezed
class BattleState with _$BattleState {
  const factory BattleState({
    MolCard? temporarilySelectedCard,
    MolCard? selectedCard,
    DisclosedUser? player,
    DisclosedUser? opponent,
    required int playerHp,
    required int opponentHp,
    required int playerMp,
    required int opponentMp,
    @Default(BattlePhase.playerCardSelectable())
    BattlePhase
        battlePhase, // FIXME: 開発用で一時的に初期値をcardSelectableに設定 実装完了後の初期値はinitial
  }) = _BattleState;
}

@freezed
class BattlePhase with _$BattlePhase {
  const factory BattlePhase.initial() = _Initial;
  const factory BattlePhase.opponentTurnStarted() = _OpponentTurnStarted;
  const factory BattlePhase.opponentTurnFinished() = _OpponentTurnFinished;
  const factory BattlePhase.playerTurnStarted() = _PlayerTurnStarted;
  const factory BattlePhase.playerTurnFinished() = _PlayerTurnFinished;
  const factory BattlePhase.playerCardSelectable() = _PlayerCardSelectable;
  const factory BattlePhase.playerCardTemporarilySelected() =
      _CardTemporarilySelected;
  const factory BattlePhase.playerCardSelected() = _PlayerCardSelected;
  const factory BattlePhase.playerCounterCardSelectable() =
      _PlayerCounterCardSelectable;
  const factory BattlePhase.playerCounterCardSelected() =
      _PlayerCounterCardSelected;
  const factory BattlePhase.opponentCounterCardSelectable() =
      _OpponentCounterCardSelectable;
  const factory BattlePhase.opponentCounterCardSelected() =
      _OpponentCounterCardSelected;
  const factory BattlePhase.opponentCardSelectable() = _OpponentCardSelectable;
  const factory BattlePhase.opponentCardSelected() = _OpponentCardSelected;
  const factory BattlePhase.error(Exception e) = _Error;
}
