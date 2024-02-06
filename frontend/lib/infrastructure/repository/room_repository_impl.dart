import 'package:flutter/foundation.dart';
import 'package:frontend/domain/repository/room_repository.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomApi _apiInstance;

  RoomRepositoryImpl(ApiClient apiClient) : _apiInstance = RoomApi(apiClient);

  @override
  Future<void> createRoom(CreateRoom request) async {
    try {
      return await _apiInstance.createRoom(request);
    } catch (e) {
      if (kDebugMode) {
        print('Exception when calling AccountRepository->createRoom: $e\n');
      }
      rethrow;
    }
  }

  @override
  Future<GetRoomMembersResponse?> getRoomMembers(String roomId) {
    return _apiInstance.getRoomMembers(roomId);
  }
}
