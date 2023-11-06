import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/repository/account_repository.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/notifier/providers.dart';

class AccountRepositoryImpl implements AccountRepository {
  final AccountApi _apiInstance;

  AccountRepositoryImpl(ApiClient apiClient)
      : _apiInstance = AccountApi(apiClient);

  @override
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

final accountRepositoryProvider = Provider<AccountRepository>(
    (ref) => AccountRepositoryImpl(ref.watch(apiClientStateProvider)));
