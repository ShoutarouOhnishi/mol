import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/config/environment_config.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class ApiClientStateNotifier extends StateNotifier<ApiClient> {
  ApiClientStateNotifier()
      : super(ApiClient(basePath: EnvironmentConfig.apiUrl));
}
