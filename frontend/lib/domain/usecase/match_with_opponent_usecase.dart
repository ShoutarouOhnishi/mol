import 'package:frontend/presentation/state/match_make_page_state.dart';

abstract class MatchWithOpponentUseCase {
  Future<MatchMakeState> call(String userId);
}
