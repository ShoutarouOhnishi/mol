import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/configs/environment_config.dart';
import 'package:openapi/api.dart';

final apiClientStateProvider =
    StateNotifierProvider<ApiClientStateNotifier, ApiClient>((ref) {
  return ApiClientStateNotifier();
});

class ApiClientStateNotifier extends StateNotifier<ApiClient> {
  ApiClientStateNotifier()
      : super(ApiClient(basePath: EnvironmentConfig.apiUrl));

  void setIdToken(String idToken) {
    try {
      state.addDefaultHeader('Authorization', 'Bearer $idToken');
    } on Exception catch (e) {
      // FIXME: エラー処理 ここで処理するか上層にあげるか
    }
  }
}
