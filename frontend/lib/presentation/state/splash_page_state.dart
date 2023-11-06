import 'package:freezed_annotation/freezed_annotation.dart';
part 'splash_page_state.freezed.dart';

@freezed
class SplashPageState with _$SplashPageState {
  const factory SplashPageState({
    @Default(false) bool isLoading,
    @Default([]) List<SplashPageUiEvent> events,
  }) = _SplashPageState;
}

@freezed
class SplashPageUiEvent with _$SplashPageUiEvent {
  const factory SplashPageUiEvent.onCompleteNotLogin() = OnCompleteNotLogin;

  const factory SplashPageUiEvent.onCompleteLogin() = OnCompleteLogin;

  const factory SplashPageUiEvent.onError(Exception e) = OnError;
}
