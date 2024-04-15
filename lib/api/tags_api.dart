//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class TagsApi {
  TagsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/tags' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateTagDto] createTagDto (required):
  Future<Response> tagsControllerCreateTagWithHttpInfo(CreateTagDto createTagDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/tags';

    // ignore: prefer_final_locals
    Object? postBody = createTagDto;

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
  /// * [CreateTagDto] createTagDto (required):
  Future<void> tagsControllerCreateTag(CreateTagDto createTagDto,) async {
    final response = await tagsControllerCreateTagWithHttpInfo(createTagDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/tags/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> tagsControllerGetTagWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/tags/{id}'
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
  Future<Tag?> tagsControllerGetTag(String id,) async {
    final response = await tagsControllerGetTagWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Tag',) as Tag;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/tags' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [num] page:
  ///
  /// * [num] limit:
  ///
  /// * [String] filters:
  ///   JSON string of FilterTagDto
  ///
  /// * [String] sort:
  ///   JSON string of SortTagDto
  Future<Response> tagsControllerGetTagsWithHttpInfo({ num? page, num? limit, String? filters, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/tags';

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
  ///   JSON string of FilterTagDto
  ///
  /// * [String] sort:
  ///   JSON string of SortTagDto
  Future<TagInfinityPaginationResult?> tagsControllerGetTags({ num? page, num? limit, String? filters, String? sort, }) async {
    final response = await tagsControllerGetTagsWithHttpInfo( page: page, limit: limit, filters: filters, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TagInfinityPaginationResult',) as TagInfinityPaginationResult;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/tags/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateTagDto] updateTagDto (required):
  Future<Response> tagsControllerUpdateTagWithHttpInfo(String id, UpdateTagDto updateTagDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/tags/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateTagDto;

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
  /// * [UpdateTagDto] updateTagDto (required):
  Future<void> tagsControllerUpdateTag(String id, UpdateTagDto updateTagDto,) async {
    final response = await tagsControllerUpdateTagWithHttpInfo(id, updateTagDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
