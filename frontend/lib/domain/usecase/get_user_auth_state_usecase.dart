import 'package:frontend/presentation/notifier/auth_state_notifier.dart';

abstract class GetUserAuthStateUseCase {
  Future<AuthState> call();
}
