import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/usecase/providers.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/notifier/auth_state_notifier.dart';
import 'package:frontend/presentation/notifier/battle_state_notifier.dart';
import 'package:frontend/presentation/notifier/initial_page_state_notifier.dart';
import 'package:frontend/presentation/notifier/match_make_page_state_notifier.dart';
import 'package:frontend/presentation/notifier/splash_page_state_notifier.dart';
import 'package:frontend/presentation/state/auth_state.dart';
import 'package:frontend/presentation/state/battle_state.dart';
import 'package:frontend/presentation/state/initial_page_state.dart';
import 'package:frontend/presentation/state/match_make_page_state.dart';
import 'package:frontend/presentation/state/splash_page_state.dart';
import 'api_client_state_notifier.dart';

final apiClientStateProvider =
    StateNotifierProvider<ApiClientStateNotifier, ApiClient>((ref) {
  return ApiClientStateNotifier();
});

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final getUserStateUseCase = ref.watch(getUserAuthStateUseCaseProvider);
  final createAnonymouslyUserUseCase =
      ref.watch(createAnonymouslyUserUseCaseProvider);
  return AuthStateNotifier(getUserStateUseCase, createAnonymouslyUserUseCase);
});

final initialPageStateNotifierProvider = StateNotifierProvider.autoDispose<
    InitialPageStateNotifier, InitialPageState>((ref) {
  final authStateNotifier = ref.watch(authStateProvider.notifier);
  return InitialPageStateNotifier(authStateNotifier);
});

final matchMakePageStateNotifierProvider =
    StateNotifierProvider<MatchMakePageStateNotifier, MatchMakeState>((ref) {
  final authStateNotifier = ref.watch(authStateProvider.notifier);
  final matchWithOpponentUseCase = ref.watch(matchWithOpponentUseCaseProvider);
  final createRoomOpponentUseCase = ref.watch(createRoomUseCaseProvider);
  return MatchMakePageStateNotifier(
      authStateNotifier, matchWithOpponentUseCase, createRoomOpponentUseCase);
});

final splashPageStateNotifierProvider =
    StateNotifierProvider.autoDispose<SplashPageStateNotifier, SplashPageState>(
        (ref) {
  return SplashPageStateNotifier(ref.watch(authStateProvider.notifier));
});

final battleStateNotifierProvider =
    StateNotifierProvider.autoDispose<BattleStateNotifier, BattleState>((ref) {
  final authStateNotifier = ref.watch(authStateProvider.notifier);
  final useCase = ref.read(getRoomMembersUseCaseProvider);
  return BattleStateNotifier(authStateNotifier, useCase);
});
