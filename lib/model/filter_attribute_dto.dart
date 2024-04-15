//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class FilterAttributeDto {
  /// Returns a new [FilterAttributeDto] instance.
  FilterAttributeDto({
    this.label,
    this.name,
    this.unit,
    this.description,
    this.status = const [],
  });

  /// Attribute label, unique
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Attribute name, can be translated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Attribute unit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<FilterAttributeDtoStatusEnum> status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterAttributeDto &&
    other.label == label &&
    other.name == name &&
    other.unit == unit &&
    other.description == description &&
    _deepEquality.equals(other.status, status);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label == null ? 0 : label!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'FilterAttributeDto[label=$label, name=$name, unit=$unit, description=$description, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [FilterAttributeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterAttributeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterAttributeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterAttributeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterAttributeDto(
        label: mapValueOfType<String>(json, r'label'),
        name: mapValueOfType<String>(json, r'name'),
        unit: mapValueOfType<String>(json, r'unit'),
        description: mapValueOfType<String>(json, r'description'),
        status: FilterSpuDtoStatusEnum.listFromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<FilterAttributeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterAttributeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterAttributeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterAttributeDto> mapFromJson(dynamic json) {
    final map = <String, FilterAttributeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterAttributeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterAttributeDto-objects as value to a dart map
  static Map<String, List<FilterAttributeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterAttributeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterAttributeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FilterSpuDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterSpuDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const available = FilterSpuDtoStatusEnum._(r'available');
  static const deleted = FilterSpuDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][FilterSpuDtoStatusEnum].
  static const values = <FilterSpuDtoStatusEnum>[
    available,
    deleted,
  ];

  static FilterSpuDtoStatusEnum? fromJson(dynamic value) => FilterSpuDtoStatusEnumTypeTransformer().decode(value);

  static List<FilterSpuDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterSpuDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterSpuDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterSpuDtoStatusEnum] to String,
/// and [decode] dynamic data back to [FilterSpuDtoStatusEnum].
class FilterSpuDtoStatusEnumTypeTransformer {
  factory FilterSpuDtoStatusEnumTypeTransformer() => _instance ??= const FilterSpuDtoStatusEnumTypeTransformer._();

  const FilterSpuDtoStatusEnumTypeTransformer._();

  String encode(FilterSpuDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterSpuDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterSpuDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'available': return FilterSpuDtoStatusEnum.available;
        case r'deleted': return FilterSpuDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterSpuDtoStatusEnumTypeTransformer] instance.
  static FilterSpuDtoStatusEnumTypeTransformer? _instance;
}


