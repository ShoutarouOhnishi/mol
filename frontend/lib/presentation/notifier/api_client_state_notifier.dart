import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/config/environment_config.dart';
import 'package:frontend/domain/usecase/set_id_token_usecase.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class ApiClientStateNotifier extends StateNotifier<ApiClient> {
  final SetIdTokenUseCase setIdTokenUseCase;

  ApiClientStateNotifier(this.setIdTokenUseCase)
      : super(ApiClient(basePath: EnvironmentConfig.apiUrl));

  void setIdToken(String idToken) {
    setIdTokenUseCase(idToken);
  }
}
