import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/shared_notifiers/api_client_state_notifier.dart';
import 'package:openapi/api.dart';

class AccountRepository {
  final AccountApi _apiInstance;

  AccountRepository(ApiClient apiClient) : _apiInstance = AccountApi(apiClient);

  Future<CreateUserResponse?> createUser(CreateUserRequest request) async {
    try {
      return await _apiInstance.createUser(request);
    } catch (e) {
      if (kDebugMode) {
        print('Exception when calling AccountRepository->createUser: $e\n');
      }
      rethrow;
    }
  }

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

final accountRepositoryProvider = Provider<AccountRepository>(
    (ref) => AccountRepository(ref.watch(apiClientStateProvider)));
