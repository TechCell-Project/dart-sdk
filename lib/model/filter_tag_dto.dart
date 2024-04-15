//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class FilterTagDto {
  /// Returns a new [FilterTagDto] instance.
  FilterTagDto({
    this.slug,
    this.keyword,
    this.status = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Search by keyword
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyword;

  List<FilterTagDtoStatusEnum> status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterTagDto &&
    other.slug == slug &&
    other.keyword == keyword &&
    _deepEquality.equals(other.status, status);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug == null ? 0 : slug!.hashCode) +
    (keyword == null ? 0 : keyword!.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'FilterTagDto[slug=$slug, keyword=$keyword, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.keyword != null) {
      json[r'keyword'] = this.keyword;
    } else {
      json[r'keyword'] = null;
    }
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [FilterTagDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterTagDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterTagDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterTagDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterTagDto(
        slug: mapValueOfType<String>(json, r'slug'),
        keyword: mapValueOfType<String>(json, r'keyword'),
        status: FilterTagDtoStatusEnum.listFromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<FilterTagDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterTagDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterTagDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterTagDto> mapFromJson(dynamic json) {
    final map = <String, FilterTagDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterTagDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterTagDto-objects as value to a dart map
  static Map<String, List<FilterTagDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterTagDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterTagDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}


class FilterTagDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterTagDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = FilterTagDtoStatusEnum._(r'active');
  static const deleted = FilterTagDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][FilterTagDtoStatusEnum].
  static const values = <FilterTagDtoStatusEnum>[
    active,
    deleted,
  ];

  static FilterTagDtoStatusEnum? fromJson(dynamic value) => FilterTagDtoStatusEnumTypeTransformer().decode(value);

  static List<FilterTagDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterTagDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterTagDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterTagDtoStatusEnum] to String,
/// and [decode] dynamic data back to [FilterTagDtoStatusEnum].
class FilterTagDtoStatusEnumTypeTransformer {
  factory FilterTagDtoStatusEnumTypeTransformer() => _instance ??= const FilterTagDtoStatusEnumTypeTransformer._();

  const FilterTagDtoStatusEnumTypeTransformer._();

  String encode(FilterTagDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterTagDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterTagDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return FilterTagDtoStatusEnum.active;
        case r'deleted': return FilterTagDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterTagDtoStatusEnumTypeTransformer] instance.
  static FilterTagDtoStatusEnumTypeTransformer? _instance;
}


