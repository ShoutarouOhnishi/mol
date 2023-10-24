import 'package:frontend/presentation/notifier/auth_state_notifier.dart';

abstract class CreateAnonymouslyUserUseCase {
  Future<AuthState> call(String userName);
}
