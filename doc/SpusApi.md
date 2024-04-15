# dart_sdk.api.SpusApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sPUControllerAddSpuModels**](SpusApi.md#spucontrolleraddspumodels) | **POST** /api/spus/{id}/models | 
[**sPUControllerCreateSPU**](SpusApi.md#spucontrollercreatespu) | **POST** /api/spus | 
[**sPUControllerGetSPU**](SpusApi.md#spucontrollergetspu) | **GET** /api/spus/{id} | 
[**sPUControllerGetSPUs**](SpusApi.md#spucontrollergetspus) | **GET** /api/spus | 
[**sPUControllerUpdateSPU**](SpusApi.md#spucontrollerupdatespu) | **PATCH** /api/spus/{id} | 
[**sPUControllerUpdateSpuModel**](SpusApi.md#spucontrollerupdatespumodel) | **PATCH** /api/spus/{id}/models/{slug} | 


# **sPUControllerAddSpuModels**
> sPUControllerAddSpuModels(id, addSpuModelDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = SpusApi();
final id = 66164ef6c4165e4833949722; // String | 
final addSpuModelDto = AddSpuModelDto(); // AddSpuModelDto | 

try {
    api_instance.sPUControllerAddSpuModels(id, addSpuModelDto);
} catch (e) {
    print('Exception when calling SpusApi->sPUControllerAddSpuModels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **addSpuModelDto** | [**AddSpuModelDto**](AddSpuModelDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sPUControllerCreateSPU**
> sPUControllerCreateSPU(createSpuDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = SpusApi();
final createSpuDto = CreateSpuDto(); // CreateSpuDto | 

try {
    api_instance.sPUControllerCreateSPU(createSpuDto);
} catch (e) {
    print('Exception when calling SpusApi->sPUControllerCreateSPU: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSpuDto** | [**CreateSpuDto**](CreateSpuDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sPUControllerGetSPU**
> SPU sPUControllerGetSPU(id)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = SpusApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    final result = api_instance.sPUControllerGetSPU(id);
    print(result);
} catch (e) {
    print('Exception when calling SpusApi->sPUControllerGetSPU: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SPU**](SPU.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sPUControllerGetSPUs**
> SpuInfinityPaginationResult sPUControllerGetSPUs(page, limit, filters, sort)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = SpusApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 
final filters = filters_example; // String | JSON string of FilterSpuDto
final sort = sort_example; // String | JSON string of SortSpuDto

try {
    final result = api_instance.sPUControllerGetSPUs(page, limit, filters, sort);
    print(result);
} catch (e) {
    print('Exception when calling SpusApi->sPUControllerGetSPUs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | [optional] 
 **limit** | **num**|  | [optional] 
 **filters** | **String**| JSON string of FilterSpuDto | [optional] 
 **sort** | **String**| JSON string of SortSpuDto | [optional] 

### Return type

[**SpuInfinityPaginationResult**](SpuInfinityPaginationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sPUControllerUpdateSPU**
> sPUControllerUpdateSPU(id, updateSpuDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = SpusApi();
final id = 66164ef6c4165e4833949722; // String | 
final updateSpuDto = UpdateSpuDto(); // UpdateSpuDto | 

try {
    api_instance.sPUControllerUpdateSPU(id, updateSpuDto);
} catch (e) {
    print('Exception when calling SpusApi->sPUControllerUpdateSPU: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateSpuDto** | [**UpdateSpuDto**](UpdateSpuDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sPUControllerUpdateSpuModel**
> sPUControllerUpdateSpuModel(id, slug, updateSPUModelSchemaDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = SpusApi();
final id = 66164ef6c4165e4833949722; // String | 
final slug = slug; // String | 
final updateSPUModelSchemaDto = UpdateSPUModelSchemaDto(); // UpdateSPUModelSchemaDto | 

try {
    api_instance.sPUControllerUpdateSpuModel(id, slug, updateSPUModelSchemaDto);
} catch (e) {
    print('Exception when calling SpusApi->sPUControllerUpdateSpuModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **slug** | **String**|  | 
 **updateSPUModelSchemaDto** | [**UpdateSPUModelSchemaDto**](UpdateSPUModelSchemaDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

