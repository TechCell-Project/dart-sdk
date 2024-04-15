//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class AttributesApi {
  AttributesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/attributes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateAttributeDto] createAttributeDto (required):
  Future<Response> attributesControllerCreateAttributeWithHttpInfo(CreateAttributeDto createAttributeDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/attributes';

    // ignore: prefer_final_locals
    Object? postBody = createAttributeDto;

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
  /// * [CreateAttributeDto] createAttributeDto (required):
  Future<void> attributesControllerCreateAttribute(CreateAttributeDto createAttributeDto,) async {
    final response = await attributesControllerCreateAttributeWithHttpInfo(createAttributeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/attributes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> attributesControllerDeleteAttributeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/attributes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
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
  Future<void> attributesControllerDeleteAttribute(String id,) async {
    final response = await attributesControllerDeleteAttributeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/attributes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> attributesControllerGetAttributeWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/attributes/{id}'
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
  Future<Attribute?> attributesControllerGetAttribute(String id,) async {
    final response = await attributesControllerGetAttributeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Attribute',) as Attribute;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/attributes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [num] page:
  ///
  /// * [num] limit:
  ///
  /// * [String] filters:
  ///   JSON string of FilterAttributeDto
  ///
  /// * [String] sort:
  ///   JSON string of SortAttributeDto
  Future<Response> attributesControllerGetAttributesWithHttpInfo({ num? page, num? limit, String? filters, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/attributes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }

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
  /// * [num] page:
  ///
  /// * [num] limit:
  ///
  /// * [String] filters:
  ///   JSON string of FilterAttributeDto
  ///
  /// * [String] sort:
  ///   JSON string of SortAttributeDto
  Future<AttributeInfinityPaginationResult?> attributesControllerGetAttributes({ num? page, num? limit, String? filters, String? sort, }) async {
    final response = await attributesControllerGetAttributesWithHttpInfo( page: page, limit: limit, filters: filters, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttributeInfinityPaginationResult',) as AttributeInfinityPaginationResult;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/attributes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateAttributeDto] updateAttributeDto (required):
  Future<Response> attributesControllerUpdateAttributeWithHttpInfo(String id, UpdateAttributeDto updateAttributeDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/attributes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateAttributeDto;

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
  /// * [UpdateAttributeDto] updateAttributeDto (required):
  Future<void> attributesControllerUpdateAttribute(String id, UpdateAttributeDto updateAttributeDto,) async {
    final response = await attributesControllerUpdateAttributeWithHttpInfo(id, updateAttributeDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
