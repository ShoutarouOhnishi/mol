# openapi.api.AccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](AccountApi.md#createuser) | **POST** /api/v1/user | ユーザー作成
[**login**](AccountApi.md#login) | **POST** /api/v1/authenticate | ログイン


# **createUser**
> CreateUserResponse createUser(createUserRequest)

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

final api_instance = AccountApi();
final createUserRequest = CreateUserRequest(); // CreateUserRequest | 

try {
    final result = api_instance.createUser(createUserRequest);
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md)|  | 

### Return type

[**CreateUserResponse**](CreateUserResponse.md)

### Authorization

[firebaseTokenGuard](../README.md#firebaseTokenGuard)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> LoginResponse login()

ログイン

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: firebaseTokenGuard
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('firebaseTokenGuard').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('firebaseTokenGuard').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AccountApi();

try {
    final result = api_instance.login();
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->login: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

[firebaseTokenGuard](../README.md#firebaseTokenGuard)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

