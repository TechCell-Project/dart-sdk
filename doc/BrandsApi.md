# dart_sdk.api.BrandsApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**brandsControllerCreateBrand**](BrandsApi.md#brandscontrollercreatebrand) | **POST** /api/brands | 
[**brandsControllerDeleteBrand**](BrandsApi.md#brandscontrollerdeletebrand) | **DELETE** /api/brands/{id} | 
[**brandsControllerGetBrand**](BrandsApi.md#brandscontrollergetbrand) | **GET** /api/brands/{id} | 
[**brandsControllerGetBrands**](BrandsApi.md#brandscontrollergetbrands) | **GET** /api/brands | 
[**brandsControllerUpdateBrand**](BrandsApi.md#brandscontrollerupdatebrand) | **PATCH** /api/brands/{id} | 


# **brandsControllerCreateBrand**
> brandsControllerCreateBrand(createBrandDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BrandsApi();
final createBrandDto = CreateBrandDto(); // CreateBrandDto | 

try {
    api_instance.brandsControllerCreateBrand(createBrandDto);
} catch (e) {
    print('Exception when calling BrandsApi->brandsControllerCreateBrand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBrandDto** | [**CreateBrandDto**](CreateBrandDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsControllerDeleteBrand**
> brandsControllerDeleteBrand(id)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BrandsApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    api_instance.brandsControllerDeleteBrand(id);
} catch (e) {
    print('Exception when calling BrandsApi->brandsControllerDeleteBrand: $e\n');
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

# **brandsControllerGetBrand**
> Brand brandsControllerGetBrand(id)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = BrandsApi();
final id = 66164ef6c4165e4833949722; // String | 

try {
    final result = api_instance.brandsControllerGetBrand(id);
    print(result);
} catch (e) {
    print('Exception when calling BrandsApi->brandsControllerGetBrand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Brand**](Brand.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsControllerGetBrands**
> BrandInfinityPaginationResult brandsControllerGetBrands(page, limit, filters, sort)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = BrandsApi();
final page = 8.14; // num | 
final limit = 8.14; // num | 
final filters = filters_example; // String | JSON string of FilterBrandsDto
final sort = sort_example; // String | JSON string of SortBrandsDto

try {
    final result = api_instance.brandsControllerGetBrands(page, limit, filters, sort);
    print(result);
} catch (e) {
    print('Exception when calling BrandsApi->brandsControllerGetBrands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | [optional] 
 **limit** | **num**|  | [optional] 
 **filters** | **String**| JSON string of FilterBrandsDto | [optional] 
 **sort** | **String**| JSON string of SortBrandsDto | [optional] 

### Return type

[**BrandInfinityPaginationResult**](BrandInfinityPaginationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsControllerUpdateBrand**
> brandsControllerUpdateBrand(id, updateBrandDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = BrandsApi();
final id = 66164ef6c4165e4833949722; // String | 
final updateBrandDto = UpdateBrandDto(); // UpdateBrandDto | 

try {
    api_instance.brandsControllerUpdateBrand(id, updateBrandDto);
} catch (e) {
    print('Exception when calling BrandsApi->brandsControllerUpdateBrand: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateBrandDto** | [**UpdateBrandDto**](UpdateBrandDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

