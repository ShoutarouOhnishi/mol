import 'package:frontend/presentation/notifier/match_make_page_state_notifier.dart';

abstract class MatchWithOpponentUseCase {
  Future<MatchMakeState> call(String userId);
}
