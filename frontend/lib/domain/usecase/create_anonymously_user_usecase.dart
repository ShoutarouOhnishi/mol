import 'package:frontend/presentation/state/auth_state.dart';

abstract class CreateAnonymouslyUserUseCase {
  Future<AuthState> call(String userName);
}
