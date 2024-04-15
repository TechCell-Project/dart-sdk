# dart_sdk.api.ImagesApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imagesControllerGetImageByPublicId**](ImagesApi.md#imagescontrollergetimagebypublicid) | **GET** /api/images/{publicId} | Get image by public id
[**imagesControllerUploadArrayImages**](ImagesApi.md#imagescontrolleruploadarrayimages) | **POST** /api/images | Upload multiple image


# **imagesControllerGetImageByPublicId**
> ImageUploadedResponseDTO imagesControllerGetImageByPublicId(publicId)

Get image by public id

### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = ImagesApi();
final publicId = publicId_example; // String | Image public id

try {
    final result = api_instance.imagesControllerGetImageByPublicId(publicId);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->imagesControllerGetImageByPublicId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicId** | **String**| Image public id | 

### Return type

[**ImageUploadedResponseDTO**](ImageUploadedResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesControllerUploadArrayImages**
> List<ImageUploadedResponseDTO> imagesControllerUploadArrayImages(images)

Upload multiple image

### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ImagesApi();
final images = [/path/to/file.txt]; // List<MultipartFile> | 

try {
    final result = api_instance.imagesControllerUploadArrayImages(images);
    print(result);
} catch (e) {
    print('Exception when calling ImagesApi->imagesControllerUploadArrayImages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | [**List<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

[**List<ImageUploadedResponseDTO>**](ImageUploadedResponseDTO.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

