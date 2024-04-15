# dart_sdk.api.AttributesApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attributesControllerCreateAttribute**](AttributesApi.md#attributescontrollercreateattribute) | **POST** /api/attributes | 
[**attributesControllerDeleteAttribute**](AttributesApi.md#attributescontrollerdeleteattribute) | **DELETE** /api/attributes/{id} | 
[**attributesControllerGetAttribute**](AttributesApi.md#attributescontrollergetattribute) | **GET** /api/attributes/{id} | 
[**attributesControllerGetAttributes**](AttributesApi.md#attributescontrollergetattributes) | **GET** /api/attributes | 
[**attributesControllerUpdateAttribute**](AttributesApi.md#attributescontrollerupdateattribute) | **PATCH** /api/attributes/{id} | 


# **attributesControllerCreateAttribute**
> attributesControllerCreateAttribute(createAttributeDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttributesApi();
final createAttributeDto = CreateAttributeDto(); // CreateAttributeDto | 

try {
    api_instance.attributesControllerCreateAttribute(createAttributeDto);
} catch (e) {
    print('Exception when calling AttributesApi->attributesControllerCreateAttribute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAttributeDto** | [**CreateAttributeDto**](CreateAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attributesControllerDeleteAttribute**
> attributesControllerDeleteAttribute(id)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttributesApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    api_instance.attributesControllerDeleteAttribute(id);
} catch (e) {
    print('Exception when calling AttributesApi->attributesControllerDeleteAttribute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attributesControllerGetAttribute**
> Attribute attributesControllerGetAttribute(id)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttributesApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    final result = api_instance.attributesControllerGetAttribute(id);
    print(result);
} catch (e) {
    print('Exception when calling AttributesApi->attributesControllerGetAttribute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Attribute**](Attribute.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attributesControllerGetAttributes**
> AttributeInfinityPaginationResult attributesControllerGetAttributes(page, limit, filters, sort)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttributesApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 
final filters = filters_example; // String | JSON string of FilterAttributeDto
final sort = sort_example; // String | JSON string of SortAttributeDto

try {
    final result = api_instance.attributesControllerGetAttributes(page, limit, filters, sort);
    print(result);
} catch (e) {
    print('Exception when calling AttributesApi->attributesControllerGetAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | [optional] 
 **limit** | **num**|  | [optional] 
 **filters** | **String**| JSON string of FilterAttributeDto | [optional] 
 **sort** | **String**| JSON string of SortAttributeDto | [optional] 

### Return type

[**AttributeInfinityPaginationResult**](AttributeInfinityPaginationResult.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attributesControllerUpdateAttribute**
> attributesControllerUpdateAttribute(id, updateAttributeDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AttributesApi();
final id = 66164ef6c4165e4833949722; // String | 
final updateAttributeDto = UpdateAttributeDto(); // UpdateAttributeDto | 

try {
    api_instance.attributesControllerUpdateAttribute(id, updateAttributeDto);
} catch (e) {
    print('Exception when calling AttributesApi->attributesControllerUpdateAttribute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateAttributeDto** | [**UpdateAttributeDto**](UpdateAttributeDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

