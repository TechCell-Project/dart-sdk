//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;


class ImagesApi {
  ImagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get image by public id
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] publicId (required):
  ///   Image public id
  Future<Response> imagesControllerGetImageByPublicIdWithHttpInfo(String publicId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/images/{publicId}'
      .replaceAll('{publicId}', publicId);

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

  /// Get image by public id
  ///
  /// Parameters:
  ///
  /// * [String] publicId (required):
  ///   Image public id
  Future<ImageUploadedResponseDTO?> imagesControllerGetImageByPublicId(String publicId,) async {
    final response = await imagesControllerGetImageByPublicIdWithHttpInfo(publicId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImageUploadedResponseDTO',) as ImageUploadedResponseDTO;
    
    }
    return null;
  }

  /// Upload multiple image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<MultipartFile>] images:
  Future<Response> imagesControllerUploadArrayImagesWithHttpInfo({ List<MultipartFile>? images, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/images';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (images != null) {
      hasFields = true;
      mp.fields[r'images'] = images.field;
      mp.files.add(images);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload multiple image
  ///
  /// Parameters:
  ///
  /// * [List<MultipartFile>] images:
  Future<List<ImageUploadedResponseDTO>?> imagesControllerUploadArrayImages({ List<MultipartFile>? images, }) async {
    final response = await imagesControllerUploadArrayImagesWithHttpInfo( images: images, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ImageUploadedResponseDTO>') as List)
        .cast<ImageUploadedResponseDTO>()
        .toList(growable: false);

    }
    return null;
  }
}
