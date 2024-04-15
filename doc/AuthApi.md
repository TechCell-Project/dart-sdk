# dart_sdk.api.AuthApi

## Load the API package
```dart
import 'package:dart_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerConfirmEmail**](AuthApi.md#authcontrollerconfirmemail) | **POST** /api/auth/email/confirm | 
[**authControllerForgotPassword**](AuthApi.md#authcontrollerforgotpassword) | **POST** /api/auth/forgot/password | 
[**authControllerGetMe**](AuthApi.md#authcontrollergetme) | **GET** /api/auth/me | 
[**authControllerLogin**](AuthApi.md#authcontrollerlogin) | **POST** /api/auth/email/login | 
[**authControllerLogout**](AuthApi.md#authcontrollerlogout) | **POST** /api/auth/logout | 
[**authControllerRefresh**](AuthApi.md#authcontrollerrefresh) | **POST** /api/auth/refresh | 
[**authControllerRegister**](AuthApi.md#authcontrollerregister) | **POST** /api/auth/email/register | 
[**authControllerResendConfirmEmail**](AuthApi.md#authcontrollerresendconfirmemail) | **POST** /api/auth/email/resend-confirm | 
[**authControllerResetPassword**](AuthApi.md#authcontrollerresetpassword) | **POST** /api/auth/reset/password | 
[**authControllerUpdateMe**](AuthApi.md#authcontrollerupdateme) | **PATCH** /api/auth/me | 
[**authFacebookControllerLogin**](AuthApi.md#authfacebookcontrollerlogin) | **POST** /api/auth/facebook/login | 
[**authGoogleControllerLogin**](AuthApi.md#authgooglecontrollerlogin) | **POST** /api/auth/google/login | 


# **authControllerConfirmEmail**
> authControllerConfirmEmail(authConfirmEmailDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authConfirmEmailDto = AuthConfirmEmailDto(); // AuthConfirmEmailDto | 

try {
    api_instance.authControllerConfirmEmail(authConfirmEmailDto);
} catch (e) {
    print('Exception when calling AuthApi->authControllerConfirmEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authConfirmEmailDto** | [**AuthConfirmEmailDto**](AuthConfirmEmailDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerForgotPassword**
> authControllerForgotPassword(authForgotPasswordDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authForgotPasswordDto = AuthForgotPasswordDto(); // AuthForgotPasswordDto | 

try {
    api_instance.authControllerForgotPassword(authForgotPasswordDto);
} catch (e) {
    print('Exception when calling AuthApi->authControllerForgotPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authForgotPasswordDto** | [**AuthForgotPasswordDto**](AuthForgotPasswordDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerGetMe**
> User authControllerGetMe()



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    final result = api_instance.authControllerGetMe();
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authControllerGetMe: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogin**
> LoginResponseDto authControllerLogin(authEmailLoginDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authEmailLoginDto = AuthEmailLoginDto(); // AuthEmailLoginDto | 

try {
    final result = api_instance.authControllerLogin(authEmailLoginDto);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authEmailLoginDto** | [**AuthEmailLoginDto**](AuthEmailLoginDto.md)|  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogout**
> authControllerLogout()



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();

try {
    api_instance.authControllerLogout();
} catch (e) {
    print('Exception when calling AuthApi->authControllerLogout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerRefresh**
> RefreshTokenResponseDto authControllerRefresh(refreshTokenDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final refreshTokenDto = RefreshTokenDto(); // RefreshTokenDto | 

try {
    final result = api_instance.authControllerRefresh(refreshTokenDto);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authControllerRefresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenDto** | [**RefreshTokenDto**](RefreshTokenDto.md)|  | 

### Return type

[**RefreshTokenResponseDto**](RefreshTokenResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerRegister**
> authControllerRegister(authSignupDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authSignupDto = AuthSignupDto(); // AuthSignupDto | 

try {
    api_instance.authControllerRegister(authSignupDto);
} catch (e) {
    print('Exception when calling AuthApi->authControllerRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authSignupDto** | [**AuthSignupDto**](AuthSignupDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerResendConfirmEmail**
> authControllerResendConfirmEmail(resendConfirmEmail)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final resendConfirmEmail = ResendConfirmEmail(); // ResendConfirmEmail | 

try {
    api_instance.authControllerResendConfirmEmail(resendConfirmEmail);
} catch (e) {
    print('Exception when calling AuthApi->authControllerResendConfirmEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendConfirmEmail** | [**ResendConfirmEmail**](ResendConfirmEmail.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerResetPassword**
> authControllerResetPassword(authResetPasswordDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authResetPasswordDto = AuthResetPasswordDto(); // AuthResetPasswordDto | 

try {
    api_instance.authControllerResetPassword(authResetPasswordDto);
} catch (e) {
    print('Exception when calling AuthApi->authControllerResetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authResetPasswordDto** | [**AuthResetPasswordDto**](AuthResetPasswordDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerUpdateMe**
> authControllerUpdateMe(authUpdateDto)



### Example
```dart
import 'package:dart_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AuthApi();
final authUpdateDto = AuthUpdateDto(); // AuthUpdateDto | 

try {
    api_instance.authControllerUpdateMe(authUpdateDto);
} catch (e) {
    print('Exception when calling AuthApi->authControllerUpdateMe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authUpdateDto** | [**AuthUpdateDto**](AuthUpdateDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacebookControllerLogin**
> LoginResponseDto authFacebookControllerLogin(authFacebookLoginDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authFacebookLoginDto = AuthFacebookLoginDto(); // AuthFacebookLoginDto | 

try {
    final result = api_instance.authFacebookControllerLogin(authFacebookLoginDto);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authFacebookControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authFacebookLoginDto** | [**AuthFacebookLoginDto**](AuthFacebookLoginDto.md)|  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGoogleControllerLogin**
> LoginResponseDto authGoogleControllerLogin(authGoogleLoginDto)



### Example
```dart
import 'package:dart_sdk/api.dart';

final api_instance = AuthApi();
final authGoogleLoginDto = AuthGoogleLoginDto(); // AuthGoogleLoginDto | 

try {
    final result = api_instance.authGoogleControllerLogin(authGoogleLoginDto);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->authGoogleControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authGoogleLoginDto** | [**AuthGoogleLoginDto**](AuthGoogleLoginDto.md)|  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

