import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/state/auth_state.dart';

abstract class GetRoomMembersUseCase {
  Future<List<DisclosedUser>> call(AuthState authState, String roomId);
}
