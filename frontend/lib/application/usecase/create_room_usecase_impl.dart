import 'package:flutter/material.dart';
import 'package:frontend/domain/repository/room_repository.dart';
import 'package:frontend/domain/usecase/create_room_usecase.dart';
import 'package:frontend/infrastructure/datasource/openapi/client/lib/api.dart';
import 'package:frontend/presentation/state/auth_state.dart';

class CreateRoomUseCaseImpl implements CreateRoomUseCase {
  final RoomRepository _roomRepository;
  final ApiClient _apiClient;

  CreateRoomUseCaseImpl(this._roomRepository, this._apiClient);

  @override
  Future<void> call(AuthState authState, String roomId) async {
    try {
      String token = authState.token;
      _apiClient.addDefaultHeader('Authorization', 'Bearer $token');
      final request = CreateRoom(roomId: roomId, appUserId: authState.user!.id);
      await _roomRepository.createRoom(request);
      return;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return;
    }
  }
}
