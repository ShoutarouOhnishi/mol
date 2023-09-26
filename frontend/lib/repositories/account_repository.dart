import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/configs/environment_config.dart';
import 'package:openapi/api.dart';

class AccountRepository {
  final AccountApi _apiInstance;

  AccountRepository()
      : _apiInstance =
            AccountApi(ApiClient(basePath: EnvironmentConfig.apiUrl));

  Future<CreateUserResponse?> createUser(
      CreateUserRequest request, String idToken) async {
    try {
      _apiInstance.apiClient
          .addDefaultHeader('Authorization', 'Bearer $idToken');
      return await _apiInstance.createUser(request);
    } catch (e) {
      if (kDebugMode) {
        print('Exception when calling AccountRepository->createUser: $e\n');
      }
      rethrow;
    }
  }

  Future<LoginResponse?> login(String idToken) async {
    try {
      _apiInstance.apiClient
          .addDefaultHeader('Authorization', 'Bearer $idToken');
      return await _apiInstance.login();
    } catch (e) {
      if (kDebugMode) {
        print('Exception when calling AccountRepository->login: $e\n');
      }
      rethrow;
    }
  }
}

final accountRepositoryProvider =
    Provider<AccountRepository>((ref) => AccountRepository());
