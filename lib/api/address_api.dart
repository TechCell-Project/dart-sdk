//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class AddressApi {
  AddressApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get districts
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] provinceId (required):
  ///   Mã tỉnh thành
  Future<Response> addressControllerGetDistrictsWithHttpInfo(num provinceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/address/districts/{province_id}'
      .replaceAll('{province_id}', provinceId.toString());

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

  /// Get districts
  ///
  /// Parameters:
  ///
  /// * [num] provinceId (required):
  ///   Mã tỉnh thành
  Future<List<GhnDistrictDTO>?> addressControllerGetDistricts(num provinceId,) async {
    final response = await addressControllerGetDistrictsWithHttpInfo(provinceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GhnDistrictDTO>') as List)
        .cast<GhnDistrictDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get provinces
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> addressControllerGetProvincesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/address/provinces';

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

  /// Get provinces
  Future<List<GhnProvinceDTO>?> addressControllerGetProvinces() async {
    final response = await addressControllerGetProvincesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GhnProvinceDTO>') as List)
        .cast<GhnProvinceDTO>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get wards
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [num] districtId (required):
  ///   Mã quận huyện
  Future<Response> addressControllerGetWardsWithHttpInfo(num districtId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/address/wards/{district_id}'
      .replaceAll('{district_id}', districtId.toString());

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

  /// Get wards
  ///
  /// Parameters:
  ///
  /// * [num] districtId (required):
  ///   Mã quận huyện
  Future<List<GhnWardDTO>?> addressControllerGetWards(num districtId,) async {
    final response = await addressControllerGetWardsWithHttpInfo(districtId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GhnWardDTO>') as List)
        .cast<GhnWardDTO>()
        .toList(growable: false);

    }
    return null;
  }
}
