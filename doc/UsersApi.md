# dart_sdk.api.UsersApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersControllerCreate**](UsersApi.md#userscontrollercreate) | **POST** /api/users | 
[**usersControllerGetUserId**](UsersApi.md#userscontrollergetuserid) | **GET** /api/users/{id} | 
[**usersControllerGetUsers**](UsersApi.md#userscontrollergetusers) | **GET** /api/users | 
[**usersControllerUpdateUserMnt**](UsersApi.md#userscontrollerupdateusermnt) | **PATCH** /api/users/{id} | 


# **usersControllerCreate**
> User usersControllerCreate(createUserDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final createUserDto = CreateUserDto(); // CreateUserDto | 

try {
    final result = api_instance.usersControllerCreate(createUserDto);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserDto** | [**CreateUserDto**](CreateUserDto.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerGetUserId**
> User usersControllerGetUserId(id)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    final result = api_instance.usersControllerGetUserId(id);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersControllerGetUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerGetUsers**
> UserInfinityPaginationResult usersControllerGetUsers(page, limit, filters, sort)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 
final filters = filters_example; // String | JSON string of FilterUserDto
final sort = sort_example; // String | JSON string of SortUserDto

try {
    final result = api_instance.usersControllerGetUsers(page, limit, filters, sort);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersControllerGetUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | [optional] 
 **limit** | **num**|  | [optional] 
 **filters** | **String**| JSON string of FilterUserDto | [optional] 
 **sort** | **String**| JSON string of SortUserDto | [optional] 

### Return type

[**UserInfinityPaginationResult**](UserInfinityPaginationResult.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerUpdateUserMnt**
> User usersControllerUpdateUserMnt(id, updateUserMntDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 66164ef6c4165e4833949722; // String | 
final updateUserMntDto = UpdateUserMntDto(); // UpdateUserMntDto | 

try {
    final result = api_instance.usersControllerUpdateUserMnt(id, updateUserMntDto);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->usersControllerUpdateUserMnt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateUserMntDto** | [**UpdateUserMntDto**](UpdateUserMntDto.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

