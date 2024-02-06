//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RoomApi {
  RoomApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// ルーム作成
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRoom] createRoom (required):
  Future<Response> createRoomWithHttpInfo(CreateRoom createRoom,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/rooms';

    // ignore: prefer_final_locals
    Object? postBody = createRoom;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ルーム作成
  ///
  /// Parameters:
  ///
  /// * [CreateRoom] createRoom (required):
  Future<void> createRoom(CreateRoom createRoom,) async {
    final response = await createRoomWithHttpInfo(createRoom,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// ルームメンバー一覧取得
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  Future<Response> getRoomMembersWithHttpInfo(String room,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/rooms/{room}/members'
      .replaceAll('{room}', room);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// ルームメンバー一覧取得
  ///
  /// Parameters:
  ///
  /// * [String] room (required):
  Future<GetRoomMembersResponse?> getRoomMembers(String room,) async {
    final response = await getRoomMembersWithHttpInfo(room,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRoomMembersResponse',) as GetRoomMembersResponse;
    
    }
    return null;
  }
}
