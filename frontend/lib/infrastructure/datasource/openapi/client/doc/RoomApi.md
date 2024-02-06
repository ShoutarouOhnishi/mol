# openapi.api.RoomApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRoom**](RoomApi.md#createroom) | **POST** /api/v1/rooms | ルーム作成
[**getRoomMembers**](RoomApi.md#getroommembers) | **GET** /api/v1/rooms/{room}/members | ルームメンバー一覧取得


# **createRoom**
> createRoom(createRoom)

ルーム作成

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: appTokenGuard
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('appTokenGuard').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('appTokenGuard').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoomApi();
final createRoom = CreateRoom(); // CreateRoom | 

try {
    api_instance.createRoom(createRoom);
} catch (e) {
    print('Exception when calling RoomApi->createRoom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRoom** | [**CreateRoom**](CreateRoom.md)|  | 

### Return type

void (empty response body)

### Authorization

[appTokenGuard](../README.md#appTokenGuard)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoomMembers**
> GetRoomMembersResponse getRoomMembers(room)

ルームメンバー一覧取得

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: appTokenGuard
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('appTokenGuard').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('appTokenGuard').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoomApi();
final room = room_example; // String | 

try {
    final result = api_instance.getRoomMembers(room);
    print(result);
} catch (e) {
    print('Exception when calling RoomApi->getRoomMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **room** | **String**|  | 

### Return type

[**GetRoomMembersResponse**](GetRoomMembersResponse.md)

### Authorization

[appTokenGuard](../README.md#appTokenGuard)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

