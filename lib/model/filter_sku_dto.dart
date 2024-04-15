//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class FilterSkuDto {
  /// Returns a new [FilterSkuDto] instance.
  FilterSkuDto({
    this.status = const [],
  });

  /// List of status of SKU
  List<FilterSkuDtoStatusEnum> status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterSkuDto &&
    _deepEquality.equals(other.status, status);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'FilterSkuDto[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [FilterSkuDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterSkuDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterSkuDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterSkuDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterSkuDto(
        status: FilterSkuDtoStatusEnum.listFromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<FilterSkuDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterSkuDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterSkuDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterSkuDto> mapFromJson(dynamic json) {
    final map = <String, FilterSkuDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterSkuDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterSkuDto-objects as value to a dart map
  static Map<String, List<FilterSkuDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterSkuDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterSkuDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FilterSkuDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterSkuDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const selling = FilterSkuDtoStatusEnum._(r'selling');
  static const deleted = FilterSkuDtoStatusEnum._(r'deleted');
  static const newlyReleased = FilterSkuDtoStatusEnum._(r'newly-released');

  /// List of all possible values in this [enum][FilterSkuDtoStatusEnum].
  static const values = <FilterSkuDtoStatusEnum>[
    selling,
    deleted,
    newlyReleased,
  ];

  static FilterSkuDtoStatusEnum? fromJson(dynamic value) => FilterSkuDtoStatusEnumTypeTransformer().decode(value);

  static List<FilterSkuDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterSkuDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterSkuDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterSkuDtoStatusEnum] to String,
/// and [decode] dynamic data back to [FilterSkuDtoStatusEnum].
class FilterSkuDtoStatusEnumTypeTransformer {
  factory FilterSkuDtoStatusEnumTypeTransformer() => _instance ??= const FilterSkuDtoStatusEnumTypeTransformer._();

  const FilterSkuDtoStatusEnumTypeTransformer._();

  String encode(FilterSkuDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterSkuDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterSkuDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'selling': return FilterSkuDtoStatusEnum.selling;
        case r'deleted': return FilterSkuDtoStatusEnum.deleted;
        case r'newly-released': return FilterSkuDtoStatusEnum.newlyReleased;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterSkuDtoStatusEnumTypeTransformer] instance.
  static FilterSkuDtoStatusEnumTypeTransformer? _instance;
}


