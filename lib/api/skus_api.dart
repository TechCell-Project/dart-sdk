//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class SkusApi {
  SkusApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/skus/{id}/serial-numbers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AddSerialNumberDto] addSerialNumberDto (required):
  Future<Response> skusControllerAddSerialNumbersWithHttpInfo(String id, AddSerialNumberDto addSerialNumberDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/skus/{id}/serial-numbers'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = addSerialNumberDto;

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
  /// * [String] id (required):
  ///
  /// * [AddSerialNumberDto] addSerialNumberDto (required):
  Future<AddSerialNumberResponseDto?> skusControllerAddSerialNumbers(String id, AddSerialNumberDto addSerialNumberDto,) async {
    final response = await skusControllerAddSerialNumbersWithHttpInfo(id, addSerialNumberDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AddSerialNumberResponseDto',) as AddSerialNumberResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/skus' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateSkuDto] createSkuDto (required):
  Future<Response> skusControllerCreateSkuWithHttpInfo(CreateSkuDto createSkuDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/skus';

    // ignore: prefer_final_locals
    Object? postBody = createSkuDto;

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
  /// * [CreateSkuDto] createSkuDto (required):
  Future<void> skusControllerCreateSku(CreateSkuDto createSkuDto,) async {
    final response = await skusControllerCreateSkuWithHttpInfo(createSkuDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/skus/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> skusControllerGetSkuByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/skus/{id}'
      .replaceAll('{id}', id);

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

  /// Parameters:
  ///
  /// * [String] id (required):
  Future<SKU?> skusControllerGetSkuById(String id,) async {
    final response = await skusControllerGetSkuByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SKU',) as SKU;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/skus' operation and returns the [Response].
  Future<Response> skusControllerGetSkusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/skus';

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

  Future<SkuInfinityPaginationResult?> skusControllerGetSkus() async {
    final response = await skusControllerGetSkusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SkuInfinityPaginationResult',) as SkuInfinityPaginationResult;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/skus/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateSkuDto] createSkuDto (required):
  Future<Response> skusControllerUpdateSkuByIdWithHttpInfo(String id, CreateSkuDto createSkuDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/skus/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createSkuDto;

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
  /// * [String] id (required):
  ///
  /// * [CreateSkuDto] createSkuDto (required):
  Future<void> skusControllerUpdateSkuById(String id, CreateSkuDto createSkuDto,) async {
    final response = await skusControllerUpdateSkuByIdWithHttpInfo(id, createSkuDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
