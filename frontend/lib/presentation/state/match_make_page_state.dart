import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_make_page_state.freezed.dart';

@freezed
class MatchMakeState with _$MatchMakeState {
  const factory MatchMakeState.initial() = MatchMakeInitial;
  const factory MatchMakeState.loading() = MatchMakeLoading;
  const factory MatchMakeState.matched(String roomId) = MatchMakeMatched;
  const factory MatchMakeState.error(String message) = MatchMakeError;
}
