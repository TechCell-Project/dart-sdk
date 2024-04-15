//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class SpusApi {
  SpusApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/spus/{id}/models' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AddSpuModelDto] addSpuModelDto (required):
  Future<Response> sPUControllerAddSpuModelsWithHttpInfo(String id, AddSpuModelDto addSpuModelDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/spus/{id}/models'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = addSpuModelDto;

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
  /// * [AddSpuModelDto] addSpuModelDto (required):
  Future<void> sPUControllerAddSpuModels(String id, AddSpuModelDto addSpuModelDto,) async {
    final response = await sPUControllerAddSpuModelsWithHttpInfo(id, addSpuModelDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /api/spus' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateSpuDto] createSpuDto (required):
  Future<Response> sPUControllerCreateSPUWithHttpInfo(CreateSpuDto createSpuDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/spus';

    // ignore: prefer_final_locals
    Object? postBody = createSpuDto;

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
  /// * [CreateSpuDto] createSpuDto (required):
  Future<void> sPUControllerCreateSPU(CreateSpuDto createSpuDto,) async {
    final response = await sPUControllerCreateSPUWithHttpInfo(createSpuDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/spus/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> sPUControllerGetSPUWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/spus/{id}'
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
  Future<SPU?> sPUControllerGetSPU(String id,) async {
    final response = await sPUControllerGetSPUWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SPU',) as SPU;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/spus' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [num] page:
  ///
  /// * [num] limit:
  ///
  /// * [String] filters:
  ///   JSON string of FilterSpuDto
  ///
  /// * [String] sort:
  ///   JSON string of SortSpuDto
  Future<Response> sPUControllerGetSPUsWithHttpInfo({ num? page, num? limit, String? filters, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/spus';

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
  ///   JSON string of FilterSpuDto
  ///
  /// * [String] sort:
  ///   JSON string of SortSpuDto
  Future<SpuInfinityPaginationResult?> sPUControllerGetSPUs({ num? page, num? limit, String? filters, String? sort, }) async {
    final response = await sPUControllerGetSPUsWithHttpInfo( page: page, limit: limit, filters: filters, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpuInfinityPaginationResult',) as SpuInfinityPaginationResult;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/spus/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateSpuDto] updateSpuDto (required):
  Future<Response> sPUControllerUpdateSPUWithHttpInfo(String id, UpdateSpuDto updateSpuDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/spus/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateSpuDto;

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
  /// * [UpdateSpuDto] updateSpuDto (required):
  Future<void> sPUControllerUpdateSPU(String id, UpdateSpuDto updateSpuDto,) async {
    final response = await sPUControllerUpdateSPUWithHttpInfo(id, updateSpuDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /api/spus/{id}/models/{slug}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] slug (required):
  ///
  /// * [UpdateSPUModelSchemaDto] updateSPUModelSchemaDto (required):
  Future<Response> sPUControllerUpdateSpuModelWithHttpInfo(String id, String slug, UpdateSPUModelSchemaDto updateSPUModelSchemaDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/spus/{id}/models/{slug}'
      .replaceAll('{id}', id)
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = updateSPUModelSchemaDto;

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
  /// * [String] slug (required):
  ///
  /// * [UpdateSPUModelSchemaDto] updateSPUModelSchemaDto (required):
  Future<void> sPUControllerUpdateSpuModel(String id, String slug, UpdateSPUModelSchemaDto updateSPUModelSchemaDto,) async {
    final response = await sPUControllerUpdateSpuModelWithHttpInfo(id, slug, updateSPUModelSchemaDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
