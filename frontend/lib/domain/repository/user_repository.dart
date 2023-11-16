import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

abstract class UserRepository {
  Future<CreateUserResponse?> createUser(CreateUser request);
}
