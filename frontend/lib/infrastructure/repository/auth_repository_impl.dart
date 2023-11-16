import 'package:flutter/foundation.dart';
import 'package:frontend/domain/repository/auth_repository.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _apiInstance;

  AuthRepositoryImpl(ApiClient apiClient) : _apiInstance = AuthApi(apiClient);

  @override
  Future<LoginResponse?> login() async {
    try {
      return await _apiInstance.login();
    } catch (e) {
      if (kDebugMode) {
        print('Exception when calling AccountRepository->login: $e\n');
      }
      rethrow;
    }
  }
}
