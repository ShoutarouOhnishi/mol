import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/usecase/get_room_members_usecase.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/presentation/state/battle_state.dart';
import 'package:frontend/presentation/state/mol_card.dart';

class BattleStateNotifier extends StateNotifier<BattleState> {
  final AuthStateNotifier _authStateNotifier;
  final GetRoomMembersUseCase _getRoomMembersUseCase;

  BattleStateNotifier(this._authStateNotifier, this._getRoomMembersUseCase)
      : super(BattleState(
            playerHp: 30,
            opponentHp: 30,
            playerMp: 0,
            opponentMp: 0)); // todo: 正式実装

  BattleState get currentState => state;

  void initialize(String roomId) {
    getRoomMembers(roomId);
  }

  void startPlayerTurn() {
    state = state.copyWith(
      battlePhase: const BattlePhase.playerTurnStarted(),
    );
  }

  void finishPlayerTurn() {
    state = state.copyWith(
      battlePhase: const BattlePhase.playerTurnFinished(),
    );
  }

  void startOpponentTurn() {
    state = state.copyWith(
      battlePhase: const BattlePhase.opponentTurnStarted(),
    );
  }

  void finishOpponentTurn() {
    state = state.copyWith(
      battlePhase: const BattlePhase.opponentTurnFinished(),
    );
  }

  void temporarilySelectCard(MolCard card) {
    state = state.copyWith(
      temporarilySelectedCard: card,
      battlePhase: BattlePhase.playerCardTemporarilySelected(),
    );
  }

  void selectCard(MolCard card) {
    state = state.copyWith(
      selectedCard: card,
      battlePhase: BattlePhase.playerCardSelected(),
    );
    state = state.copyWith(
      battlePhase: BattlePhase.opponentTurnStarted(),
    );
    state = state.copyWith(
      battlePhase: BattlePhase.opponentCounterCardSelectable(),
    );
    Future.delayed(const Duration(seconds: 1), () {
      state = state.copyWith(
        battlePhase: BattlePhase.opponentCounterCardSelected(),
      );
    });
  }

  void dselectCard() {
    state = state.copyWith(
      battlePhase: const BattlePhase.playerCardSelectable(),
    );
  }

  Future<void> getRoomMembers(String roomId) async {
    final authState = _authStateNotifier.state;
    final result = await _getRoomMembersUseCase(authState, roomId);
    for (var member in result) {
      if (member.id != authState.user!.id) {
        state = state.copyWith(
          opponent: member,
        );
      } else {
        state = state.copyWith(
          player: member,
        );
      }
    }
  }
}
