//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class UpdateBrandDto {
  /// Returns a new [UpdateBrandDto] instance.
  UpdateBrandDto({
    this.name,
    this.description,
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  UpdateBrandDtoStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateBrandDto &&
    other.name == name &&
    other.description == description &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'UpdateBrandDto[name=$name, description=$description, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateBrandDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateBrandDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateBrandDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateBrandDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateBrandDto(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        status: UpdateBrandDtoStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<UpdateBrandDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateBrandDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateBrandDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateBrandDto> mapFromJson(dynamic json) {
    final map = <String, UpdateBrandDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateBrandDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateBrandDto-objects as value to a dart map
  static Map<String, List<UpdateBrandDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateBrandDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateBrandDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UpdateBrandDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateBrandDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = UpdateBrandDtoStatusEnum._(r'active');
  static const inactive = UpdateBrandDtoStatusEnum._(r'inactive');
  static const deleted = UpdateBrandDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][UpdateBrandDtoStatusEnum].
  static const values = <UpdateBrandDtoStatusEnum>[
    active,
    inactive,
    deleted,
  ];

  static UpdateBrandDtoStatusEnum? fromJson(dynamic value) => UpdateBrandDtoStatusEnumTypeTransformer().decode(value);

  static List<UpdateBrandDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateBrandDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateBrandDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateBrandDtoStatusEnum] to String,
/// and [decode] dynamic data back to [UpdateBrandDtoStatusEnum].
class UpdateBrandDtoStatusEnumTypeTransformer {
  factory UpdateBrandDtoStatusEnumTypeTransformer() => _instance ??= const UpdateBrandDtoStatusEnumTypeTransformer._();

  const UpdateBrandDtoStatusEnumTypeTransformer._();

  String encode(UpdateBrandDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateBrandDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateBrandDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return UpdateBrandDtoStatusEnum.active;
        case r'inactive': return UpdateBrandDtoStatusEnum.inactive;
        case r'deleted': return UpdateBrandDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateBrandDtoStatusEnumTypeTransformer] instance.
  static UpdateBrandDtoStatusEnumTypeTransformer? _instance;
}


