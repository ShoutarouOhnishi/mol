import 'package:frontend/presentation/state/auth_state.dart';

abstract class GetUserAuthStateUseCase {
  Future<AuthState> call();
}
