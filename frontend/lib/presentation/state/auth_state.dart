import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default('') String token,
    @Default(AuthStateUIEvent.initial()) AuthStateUIEvent event,
  }) = _AuthState;
}

@freezed
class AuthStateUIEvent with _$AuthStateUIEvent {
  const factory AuthStateUIEvent.initial() = _Initial;
  const factory AuthStateUIEvent.authenticated(String token) = _Authenticated;
  const factory AuthStateUIEvent.unauthenticated() = _Unauthenticated;
  const factory AuthStateUIEvent.error(Exception e) = _Error;
}
