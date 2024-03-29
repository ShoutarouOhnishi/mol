import 'package:flutter/material.dart';
import 'package:frontend/domain/repository/room_repository.dart';
import 'package:frontend/domain/usecase/get_room_members_usecase.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/state/auth_state.dart';

class GetRoomMembersUseCaseImpl implements GetRoomMembersUseCase {
  final RoomRepository _roomRepository;

  GetRoomMembersUseCaseImpl(this._roomRepository);

  @override
  Future<List<DisclosedUser>> call(AuthState authState, String roomId) async {
    try {
      final response = await _roomRepository.getRoomMembers(roomId);
      return response != null ? response.members : [];
    } on Exception catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
