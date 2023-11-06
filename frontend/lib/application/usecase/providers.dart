import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/usecase/create_anonymously_user_usecase_impl.dart';
import 'package:frontend/application/usecase/get_user_auth_state_usecase_impl.dart';
import 'package:frontend/application/usecase/match_with_opponent_usecase_impl.dart';
import 'package:frontend/application/usecase/set_id_token_usecase_impl.dart';
import 'package:frontend/config/environment_config.dart';
import 'package:frontend/domain/usecase/create_anonymously_user_usecase.dart';
import 'package:frontend/domain/usecase/get_user_auth_state_usecase.dart';
import 'package:frontend/domain/usecase/match_with_opponent_usecase.dart';
import 'package:frontend/domain/usecase/set_id_token_usecase.dart';
import 'package:frontend/infrastructure/datasource/firebase_auth_service.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/infrastructure/repository/account_repository_impl.dart';
import 'package:frontend/infrastructure/repository/match_make_repository_impl.dart';
import 'package:frontend/presentation/notifier/providers.dart';

final createAnonymouslyUserUseCaseProvider =
    Provider<CreateAnonymouslyUserUseCase>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final accountRepository = ref.watch(accountRepositoryProvider);
  final apiClient = ref.watch(apiClientStateProvider);
  return CreateAnonymouslyUserUseCaseImpl(
      firebaseAuthService, accountRepository, apiClient);
});

final getUserAuthStateUseCaseProvider =
    Provider<GetUserAuthStateUseCase>((ref) {
  final firebaseAuthService = ref.watch(firebaseAuthServiceProvider);
  final apiClient = ref.watch(apiClientStateProvider);
  final accountRepository = ref.watch(accountRepositoryProvider);
  return GetUserAuthStateUseCaseImpl(
      firebaseAuthService, apiClient, accountRepository);
});

final matchWithOpponentUseCaseProvider =
    Provider<MatchWithOpponentUseCase>((ref) {
  final matchMakeRepository = ref.watch(matchMakeRepositoryProvider);
  return MatchWithOpponentUseCaseImpl(matchMakeRepository);
});

final setIdTokenUseCaseProvider = Provider<SetIdTokenUseCase>((ref) {
  final apiClient = ApiClient(basePath: EnvironmentConfig.apiUrl);
  return SetIdTokenUseCaseImpl(apiClient);
});
