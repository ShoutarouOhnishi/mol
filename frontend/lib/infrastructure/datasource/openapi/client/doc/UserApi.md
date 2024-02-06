# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserApi.md#createuser) | **POST** /api/v1/users | ユーザー作成


# **createUser**
> CreateUserResponse createUser(createUser)

ユーザー作成

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: firebaseTokenGuard
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('firebaseTokenGuard').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('firebaseTokenGuard').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserApi();
final createUser = CreateUser(); // CreateUser | 

try {
    final result = api_instance.createUser(createUser);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUser** | [**CreateUser**](CreateUser.md)|  | 

### Return type

[**CreateUserResponse**](CreateUserResponse.md)

### Authorization

[firebaseTokenGuard](../README.md#firebaseTokenGuard)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

