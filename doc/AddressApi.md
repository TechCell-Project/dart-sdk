# dart_sdk.api.AddressApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressControllerGetDistricts**](AddressApi.md#addresscontrollergetdistricts) | **GET** /api/address/districts/{province_id} | Get districts
[**addressControllerGetProvinces**](AddressApi.md#addresscontrollergetprovinces) | **GET** /api/address/provinces | Get provinces
[**addressControllerGetWards**](AddressApi.md#addresscontrollergetwards) | **GET** /api/address/wards/{district_id} | Get wards


# **addressControllerGetDistricts**
> List<GhnDistrictDTO> addressControllerGetDistricts(provinceId)

Get districts

### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AddressApi();
final provinceId = 201; // num | Mã tỉnh thành

try {
    final result = api_instance.addressControllerGetDistricts(provinceId);
    print(result);
} catch (e) {
    print('Exception when calling AddressApi->addressControllerGetDistricts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provinceId** | **num**| Mã tỉnh thành | 

### Return type

[**List<GhnDistrictDTO>**](GhnDistrictDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressControllerGetProvinces**
> List<GhnProvinceDTO> addressControllerGetProvinces()

Get provinces

### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AddressApi();

try {
    final result = api_instance.addressControllerGetProvinces();
    print(result);
} catch (e) {
    print('Exception when calling AddressApi->addressControllerGetProvinces: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GhnProvinceDTO>**](GhnProvinceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressControllerGetWards**
> List<GhnWardDTO> addressControllerGetWards(districtId)

Get wards

### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AddressApi();
final districtId = 1490; // num | Mã quận huyện

try {
    final result = api_instance.addressControllerGetWards(districtId);
    print(result);
} catch (e) {
    print('Exception when calling AddressApi->addressControllerGetWards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtId** | **num**| Mã quận huyện | 

### Return type

[**List<GhnWardDTO>**](GhnWardDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

