//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class AuthApi {
  AuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/auth/email/confirm' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthConfirmEmailDto] authConfirmEmailDto (required):
  Future<Response> authControllerConfirmEmailWithHttpInfo(AuthConfirmEmailDto authConfirmEmailDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/email/confirm';

    // ignore: prefer_final_locals
    Object? postBody = authConfirmEmailDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthConfirmEmailDto] authConfirmEmailDto (required):
  Future<void> authControllerConfirmEmail(AuthConfirmEmailDto authConfirmEmailDto,) async {
    final response = await authControllerConfirmEmailWithHttpInfo(authConfirmEmailDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/auth/forgot/password' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthForgotPasswordDto] authForgotPasswordDto (required):
  Future<Response> authControllerForgotPasswordWithHttpInfo(AuthForgotPasswordDto authForgotPasswordDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/forgot/password';

    // ignore: prefer_final_locals
    Object? postBody = authForgotPasswordDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthForgotPasswordDto] authForgotPasswordDto (required):
  Future<void> authControllerForgotPassword(AuthForgotPasswordDto authForgotPasswordDto,) async {
    final response = await authControllerForgotPasswordWithHttpInfo(authForgotPasswordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/auth/me' operation and returns the [Response].
  Future<Response> authControllerGetMeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/me';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<User?> authControllerGetMe() async {
    final response = await authControllerGetMeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'User',) as User;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/auth/email/login' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthEmailLoginDto] authEmailLoginDto (required):
  Future<Response> authControllerLoginWithHttpInfo(AuthEmailLoginDto authEmailLoginDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/email/login';

    // ignore: prefer_final_locals
    Object? postBody = authEmailLoginDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthEmailLoginDto] authEmailLoginDto (required):
  Future<LoginResponseDto?> authControllerLogin(AuthEmailLoginDto authEmailLoginDto,) async {
    final response = await authControllerLoginWithHttpInfo(authEmailLoginDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginResponseDto',) as LoginResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/auth/logout' operation and returns the [Response].
  Future<Response> authControllerLogoutWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/logout';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  Future<void> authControllerLogout() async {
    final response = await authControllerLogoutWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/auth/refresh' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [RefreshTokenDto] refreshTokenDto (required):
  Future<Response> authControllerRefreshWithHttpInfo(RefreshTokenDto refreshTokenDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/refresh';

    // ignore: prefer_final_locals
    Object? postBody = refreshTokenDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [RefreshTokenDto] refreshTokenDto (required):
  Future<RefreshTokenResponseDto?> authControllerRefresh(RefreshTokenDto refreshTokenDto,) async {
    final response = await authControllerRefreshWithHttpInfo(refreshTokenDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RefreshTokenResponseDto',) as RefreshTokenResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/auth/email/register' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthSignupDto] authSignupDto (required):
  Future<Response> authControllerRegisterWithHttpInfo(AuthSignupDto authSignupDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/email/register';

    // ignore: prefer_final_locals
    Object? postBody = authSignupDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthSignupDto] authSignupDto (required):
  Future<void> authControllerRegister(AuthSignupDto authSignupDto,) async {
    final response = await authControllerRegisterWithHttpInfo(authSignupDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/auth/email/resend-confirm' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [ResendConfirmEmail] resendConfirmEmail (required):
  Future<Response> authControllerResendConfirmEmailWithHttpInfo(ResendConfirmEmail resendConfirmEmail,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/email/resend-confirm';

    // ignore: prefer_final_locals
    Object? postBody = resendConfirmEmail;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [ResendConfirmEmail] resendConfirmEmail (required):
  Future<void> authControllerResendConfirmEmail(ResendConfirmEmail resendConfirmEmail,) async {
    final response = await authControllerResendConfirmEmailWithHttpInfo(resendConfirmEmail,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/auth/reset/password' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthResetPasswordDto] authResetPasswordDto (required):
  Future<Response> authControllerResetPasswordWithHttpInfo(AuthResetPasswordDto authResetPasswordDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/reset/password';

    // ignore: prefer_final_locals
    Object? postBody = authResetPasswordDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthResetPasswordDto] authResetPasswordDto (required):
  Future<void> authControllerResetPassword(AuthResetPasswordDto authResetPasswordDto,) async {
    final response = await authControllerResetPasswordWithHttpInfo(authResetPasswordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/auth/me' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthUpdateDto] authUpdateDto (required):
  Future<Response> authControllerUpdateMeWithHttpInfo(AuthUpdateDto authUpdateDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/me';

    // ignore: prefer_final_locals
    Object? postBody = authUpdateDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthUpdateDto] authUpdateDto (required):
  Future<void> authControllerUpdateMe(AuthUpdateDto authUpdateDto,) async {
    final response = await authControllerUpdateMeWithHttpInfo(authUpdateDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/auth/facebook/login' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthFacebookLoginDto] authFacebookLoginDto (required):
  Future<Response> authFacebookControllerLoginWithHttpInfo(AuthFacebookLoginDto authFacebookLoginDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/facebook/login';

    // ignore: prefer_final_locals
    Object? postBody = authFacebookLoginDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthFacebookLoginDto] authFacebookLoginDto (required):
  Future<LoginResponseDto?> authFacebookControllerLogin(AuthFacebookLoginDto authFacebookLoginDto,) async {
    final response = await authFacebookControllerLoginWithHttpInfo(authFacebookLoginDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginResponseDto',) as LoginResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/auth/google/login' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuthGoogleLoginDto] authGoogleLoginDto (required):
  Future<Response> authGoogleControllerLoginWithHttpInfo(AuthGoogleLoginDto authGoogleLoginDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/google/login';

    // ignore: prefer_final_locals
    Object? postBody = authGoogleLoginDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [AuthGoogleLoginDto] authGoogleLoginDto (required):
  Future<LoginResponseDto?> authGoogleControllerLogin(AuthGoogleLoginDto authGoogleLoginDto,) async {
    final response = await authGoogleControllerLoginWithHttpInfo(authGoogleLoginDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginResponseDto',) as LoginResponseDto;
    
    }
    return null;
  }
}
