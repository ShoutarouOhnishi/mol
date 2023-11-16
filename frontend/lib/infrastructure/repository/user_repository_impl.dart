import 'package:flutter/foundation.dart';
import 'package:frontend/domain/repository/user_repository.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _apiInstance;

  UserRepositoryImpl(ApiClient apiClient) : _apiInstance = UserApi(apiClient);

  @override
  Future<CreateUserResponse?> createUser(CreateUser request) async {
    try {
      return await _apiInstance.createUser(request);
    } catch (e) {
      if (kDebugMode) {
        print('Exception when calling AccountRepository->createUser: $e\n');
      }
      rethrow;
    }
  }
}
