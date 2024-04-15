//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class FilterBrandsDto {
  /// Returns a new [FilterBrandsDto] instance.
  FilterBrandsDto({
    this.status = const [],
  });

  List<FilterBrandsDtoStatusEnum> status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterBrandsDto &&
    _deepEquality.equals(other.status, status);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'FilterBrandsDto[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [FilterBrandsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterBrandsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterBrandsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterBrandsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterBrandsDto(
        status: FilterBrandsDtoStatusEnum.listFromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<FilterBrandsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterBrandsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterBrandsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterBrandsDto> mapFromJson(dynamic json) {
    final map = <String, FilterBrandsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterBrandsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterBrandsDto-objects as value to a dart map
  static Map<String, List<FilterBrandsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterBrandsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterBrandsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FilterBrandsDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterBrandsDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = FilterBrandsDtoStatusEnum._(r'active');
  static const inactive = FilterBrandsDtoStatusEnum._(r'inactive');
  static const deleted = FilterBrandsDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][FilterBrandsDtoStatusEnum].
  static const values = <FilterBrandsDtoStatusEnum>[
    active,
    inactive,
    deleted,
  ];

  static FilterBrandsDtoStatusEnum? fromJson(dynamic value) => FilterBrandsDtoStatusEnumTypeTransformer().decode(value);

  static List<FilterBrandsDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterBrandsDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterBrandsDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterBrandsDtoStatusEnum] to String,
/// and [decode] dynamic data back to [FilterBrandsDtoStatusEnum].
class FilterBrandsDtoStatusEnumTypeTransformer {
  factory FilterBrandsDtoStatusEnumTypeTransformer() => _instance ??= const FilterBrandsDtoStatusEnumTypeTransformer._();

  const FilterBrandsDtoStatusEnumTypeTransformer._();

  String encode(FilterBrandsDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterBrandsDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterBrandsDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return FilterBrandsDtoStatusEnum.active;
        case r'inactive': return FilterBrandsDtoStatusEnum.inactive;
        case r'deleted': return FilterBrandsDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterBrandsDtoStatusEnumTypeTransformer] instance.
  static FilterBrandsDtoStatusEnumTypeTransformer? _instance;
}


