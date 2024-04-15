//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class CreateBrandDto {
  /// Returns a new [CreateBrandDto] instance.
  CreateBrandDto({
    required this.name,
    required this.description,
    this.status,
  });

  String name;

  String description;

  CreateBrandDtoStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateBrandDto &&
    other.name == name &&
    other.description == description &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CreateBrandDto[name=$name, description=$description, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'description'] = this.description;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [CreateBrandDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateBrandDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateBrandDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateBrandDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateBrandDto(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        status: CreateBrandDtoStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<CreateBrandDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBrandDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBrandDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateBrandDto> mapFromJson(dynamic json) {
    final map = <String, CreateBrandDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateBrandDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateBrandDto-objects as value to a dart map
  static Map<String, List<CreateBrandDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateBrandDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateBrandDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'description',
  };
}


class CreateBrandDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateBrandDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = CreateBrandDtoStatusEnum._(r'active');
  static const inactive = CreateBrandDtoStatusEnum._(r'inactive');
  static const deleted = CreateBrandDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][CreateBrandDtoStatusEnum].
  static const values = <CreateBrandDtoStatusEnum>[
    active,
    inactive,
    deleted,
  ];

  static CreateBrandDtoStatusEnum? fromJson(dynamic value) => CreateBrandDtoStatusEnumTypeTransformer().decode(value);

  static List<CreateBrandDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBrandDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBrandDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateBrandDtoStatusEnum] to String,
/// and [decode] dynamic data back to [CreateBrandDtoStatusEnum].
class CreateBrandDtoStatusEnumTypeTransformer {
  factory CreateBrandDtoStatusEnumTypeTransformer() => _instance ??= const CreateBrandDtoStatusEnumTypeTransformer._();

  const CreateBrandDtoStatusEnumTypeTransformer._();

  String encode(CreateBrandDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateBrandDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateBrandDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return CreateBrandDtoStatusEnum.active;
        case r'inactive': return CreateBrandDtoStatusEnum.inactive;
        case r'deleted': return CreateBrandDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateBrandDtoStatusEnumTypeTransformer] instance.
  static CreateBrandDtoStatusEnumTypeTransformer? _instance;
}


