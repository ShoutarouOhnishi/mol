import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

abstract class RoomRepository {
  Future<void> createRoom(CreateRoom request);
  Future<GetRoomMembersResponse?> getRoomMembers(String roomId);
}
