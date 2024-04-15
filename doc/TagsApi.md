# dart_sdk.api.TagsApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tagsControllerCreateTag**](TagsApi.md#tagscontrollercreatetag) | **POST** /api/tags | 
[**tagsControllerGetTag**](TagsApi.md#tagscontrollergettag) | **GET** /api/tags/{id} | 
[**tagsControllerGetTags**](TagsApi.md#tagscontrollergettags) | **GET** /api/tags | 
[**tagsControllerUpdateTag**](TagsApi.md#tagscontrollerupdatetag) | **PATCH** /api/tags/{id} | 


# **tagsControllerCreateTag**
> tagsControllerCreateTag(createTagDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = TagsApi();
final createTagDto = CreateTagDto(); // CreateTagDto | 

try {
    api_instance.tagsControllerCreateTag(createTagDto);
} catch (e) {
    print('Exception when calling TagsApi->tagsControllerCreateTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTagDto** | [**CreateTagDto**](CreateTagDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsControllerGetTag**
> Tag tagsControllerGetTag(id)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = TagsApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    final result = api_instance.tagsControllerGetTag(id);
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->tagsControllerGetTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Tag**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsControllerGetTags**
> TagInfinityPaginationResult tagsControllerGetTags(page, limit, filters, sort)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = TagsApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 
final filters = filters_example; // String | JSON string of FilterTagDto
final sort = sort_example; // String | JSON string of SortTagDto

try {
    final result = api_instance.tagsControllerGetTags(page, limit, filters, sort);
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->tagsControllerGetTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | [optional] 
 **limit** | **num**|  | [optional] 
 **filters** | **String**| JSON string of FilterTagDto | [optional] 
 **sort** | **String**| JSON string of SortTagDto | [optional] 

### Return type

[**TagInfinityPaginationResult**](TagInfinityPaginationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagsControllerUpdateTag**
> tagsControllerUpdateTag(id, updateTagDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = TagsApi();
final id = 66164ef6c4165e4833949722; // String | 
final updateTagDto = UpdateTagDto(); // UpdateTagDto | 

try {
    api_instance.tagsControllerUpdateTag(id, updateTagDto);
} catch (e) {
    print('Exception when calling TagsApi->tagsControllerUpdateTag: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateTagDto** | [**UpdateTagDto**](UpdateTagDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

