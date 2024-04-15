//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library techcell.dart_sdk;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/address_api.dart';
part 'api/attributes_api.dart';
part 'api/auth_api.dart';
part 'api/brands_api.dart';
part 'api/images_api.dart';
part 'api/skus_api.dart';
part 'api/spus_api.dart';
part 'api/tags_api.dart';
part 'api/users_api.dart';

part 'model/add_serial_number_dto.dart';
part 'model/add_serial_number_response_dto.dart';
part 'model/add_spu_model_dto.dart';
part 'model/attribute.dart';
part 'model/attribute_in_product_schema.dart';
part 'model/attribute_in_product_schema_dto.dart';
part 'model/attribute_infinity_pagination_result.dart';
part 'model/auth_confirm_email_dto.dart';
part 'model/auth_email_login_dto.dart';
part 'model/auth_facebook_login_dto.dart';
part 'model/auth_forgot_password_dto.dart';
part 'model/auth_google_login_dto.dart';
part 'model/auth_reset_password_dto.dart';
part 'model/auth_signup_dto.dart';
part 'model/auth_update_dto.dart';
part 'model/avatar_schema.dart';
part 'model/block_activity_log.dart';
part 'model/block_activity_log_dto.dart';
part 'model/block_user_dto.dart';
part 'model/brand.dart';
part 'model/brand_infinity_pagination_result.dart';
part 'model/create_attribute_dto.dart';
part 'model/create_brand_dto.dart';
part 'model/create_sku_dto.dart';
part 'model/create_spu_dto.dart';
part 'model/create_tag_dto.dart';
part 'model/create_user_dto.dart';
part 'model/district_level.dart';
part 'model/district_schema_dto.dart';
part 'model/errors.dart';
part 'model/filter_attribute_dto.dart';
part 'model/filter_brands_dto.dart';
part 'model/filter_sku_dto.dart';
part 'model/filter_spu_dto.dart';
part 'model/filter_tag_dto.dart';
part 'model/filter_user_dto.dart';
part 'model/ghn_district_dto.dart';
part 'model/ghn_province_dto.dart';
part 'model/ghn_ward_dto.dart';
part 'model/image_schema.dart';
part 'model/image_schema_dto.dart';
part 'model/image_uploaded_response_dto.dart';
part 'model/login_response_dto.dart';
part 'model/price_schema.dart';
part 'model/province_level.dart';
part 'model/province_schema_dto.dart';
part 'model/refresh_token_dto.dart';
part 'model/refresh_token_response_dto.dart';
part 'model/resend_confirm_email.dart';
part 'model/sku.dart';
part 'model/spu.dart';
part 'model/spu_model_schema.dart';
part 'model/spu_model_schema_dto.dart';
part 'model/sku_image_schema.dart';
part 'model/sku_infinity_pagination_result.dart';
part 'model/sort_attribute_dto.dart';
part 'model/sort_sku_dto.dart';
part 'model/sort_spu_dto.dart';
part 'model/sort_tag_dto.dart';
part 'model/sort_user_dto.dart';
part 'model/spu_infinity_pagination_result.dart';
part 'model/tag.dart';
part 'model/tag_infinity_pagination_result.dart';
part 'model/update_attribute_dto.dart';
part 'model/update_brand_dto.dart';
part 'model/update_spu_model_schema_dto.dart';
part 'model/update_spu_dto.dart';
part 'model/update_tag_dto.dart';
part 'model/update_user_mnt_dto.dart';
part 'model/user.dart';
part 'model/user_address_schema.dart';
part 'model/user_address_schema_dto.dart';
part 'model/user_block_schema.dart';
part 'model/user_infinity_pagination_result.dart';
part 'model/ward_level.dart';
part 'model/ward_schema_dto.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
