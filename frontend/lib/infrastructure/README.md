# openapi
アプリ向けAPI仕様

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';

// TODO Configure HTTP Bearer authorization: firebaseTokenGuard
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('firebaseTokenGuard').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('firebaseTokenGuard').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthsApi();

try {
    final result = api_instance.login();
    print(result);
} catch (e) {
    print('Exception when calling AuthsApi->login: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthsApi* | [**login**](doc//AuthsApi.md#login) | **POST** /api/v1/login | ログイン
*RoomsApi* | [**createRoom**](doc//RoomsApi.md#createroom) | **POST** /api/v1/rooms | ルーム作成
*RoomsApi* | [**getRoomMembers**](doc//RoomsApi.md#getroommembers) | **GET** /api/v1/rooms/{roomId}/members | ルームメンバー一覧取得
*UsersApi* | [**createUser**](doc//UsersApi.md#createuser) | **POST** /api/v1/users | ユーザー作成


## Documentation For Models

 - [CreateRoom](doc//CreateRoom.md)
 - [CreateUser](doc//CreateUser.md)
 - [CreateUser422Response](doc//CreateUser422Response.md)
 - [CreateUser500Response](doc//CreateUser500Response.md)
 - [CreateUserResponse](doc//CreateUserResponse.md)
 - [DisclosedUser](doc//DisclosedUser.md)
 - [GetRoomMembersResponse](doc//GetRoomMembersResponse.md)
 - [Login401Response](doc//Login401Response.md)
 - [Login403Response](doc//Login403Response.md)
 - [LoginResponse](doc//LoginResponse.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### firebaseTokenGuard

- **Type**: HTTP Bearer authentication

### appTokenGuard

- **Type**: HTTP Bearer authentication


## Author

shoutarou.ohnishi@gmail.com

