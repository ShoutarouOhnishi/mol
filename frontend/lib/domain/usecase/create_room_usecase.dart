import 'package:frontend/presentation/state/auth_state.dart';

abstract class CreateRoomUseCase {
  Future<void> call(AuthState authState, String roomId);
}
