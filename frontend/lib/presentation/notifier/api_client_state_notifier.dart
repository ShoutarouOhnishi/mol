import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/usecase/set_id_token_usecase_impl.dart';
import 'package:frontend/configs/environment_config.dart';
import 'package:frontend/domain/usecase/set_id_token_usecase.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

final apiClientStateProvider =
    StateNotifierProvider<ApiClientStateNotifier, ApiClient>((ref) {
  final useCase = ref.read(setIdTokenUseCaseProvider);
  return ApiClientStateNotifier(useCase);
});

class ApiClientStateNotifier extends StateNotifier<ApiClient> {
  final SetIdTokenUseCase setIdTokenUseCase;

  ApiClientStateNotifier(this.setIdTokenUseCase)
      : super(ApiClient(basePath: EnvironmentConfig.apiUrl));

  void setIdToken(String idToken) {
    setIdTokenUseCase(idToken);
  }
}
