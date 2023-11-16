import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

abstract class AuthRepository {
  Future<LoginResponse?> login();
}
