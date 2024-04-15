//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class BrandsApi {
  BrandsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/brands' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateBrandDto] createBrandDto (required):
  Future<Response> brandsControllerCreateBrandWithHttpInfo(CreateBrandDto createBrandDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/brands';

    // ignore: prefer_final_locals
    Object? postBody = createBrandDto;

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
  /// * [CreateBrandDto] createBrandDto (required):
  Future<void> brandsControllerCreateBrand(CreateBrandDto createBrandDto,) async {
    final response = await brandsControllerCreateBrandWithHttpInfo(createBrandDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /api/brands/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> brandsControllerDeleteBrandWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/brands/{id}'
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
  Future<void> brandsControllerDeleteBrand(String id,) async {
    final response = await brandsControllerDeleteBrandWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /api/brands/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> brandsControllerGetBrandWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/brands/{id}'
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
  Future<Brand?> brandsControllerGetBrand(String id,) async {
    final response = await brandsControllerGetBrandWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Brand',) as Brand;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/brands' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [num] page:
  ///
  /// * [num] limit:
  ///
  /// * [String] filters:
  ///   JSON string of FilterBrandsDto
  ///
  /// * [String] sort:
  ///   JSON string of SortBrandsDto
  Future<Response> brandsControllerGetBrandsWithHttpInfo({ num? page, num? limit, String? filters, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/brands';

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
  ///   JSON string of FilterBrandsDto
  ///
  /// * [String] sort:
  ///   JSON string of SortBrandsDto
  Future<BrandInfinityPaginationResult?> brandsControllerGetBrands({ num? page, num? limit, String? filters, String? sort, }) async {
    final response = await brandsControllerGetBrandsWithHttpInfo( page: page, limit: limit, filters: filters, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BrandInfinityPaginationResult',) as BrandInfinityPaginationResult;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /api/brands/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateBrandDto] updateBrandDto (required):
  Future<Response> brandsControllerUpdateBrandWithHttpInfo(String id, UpdateBrandDto updateBrandDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/brands/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateBrandDto;

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
  /// * [UpdateBrandDto] updateBrandDto (required):
  Future<void> brandsControllerUpdateBrand(String id, UpdateBrandDto updateBrandDto,) async {
    final response = await brandsControllerUpdateBrandWithHttpInfo(id, updateBrandDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
