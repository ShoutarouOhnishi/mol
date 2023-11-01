import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

abstract class AccountRepository {
  Future<CreateUserResponse?> createUser(CreateUserRequest request);
  Future<LoginResponse?> login();
}
