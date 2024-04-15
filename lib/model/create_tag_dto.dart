//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class CreateTagDto {
  /// Returns a new [CreateTagDto] instance.
  CreateTagDto({
    required this.name,
    required this.description,
    this.status,
  });

  /// Tên nhãn
  String name;

  /// Mô tả
  String description;

  CreateTagDtoStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTagDto &&
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
  String toString() => 'CreateTagDto[name=$name, description=$description, status=$status]';

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

  /// Returns a new [CreateTagDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTagDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateTagDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateTagDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateTagDto(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        status: CreateTagDtoStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<CreateTagDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTagDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTagDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTagDto> mapFromJson(dynamic json) {
    final map = <String, CreateTagDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTagDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTagDto-objects as value to a dart map
  static Map<String, List<CreateTagDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTagDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTagDto.listFromJson(entry.value, growable: growable,);
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


class CreateTagDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateTagDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = CreateTagDtoStatusEnum._(r'active');
  static const deleted = CreateTagDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][CreateTagDtoStatusEnum].
  static const values = <CreateTagDtoStatusEnum>[
    active,
    deleted,
  ];

  static CreateTagDtoStatusEnum? fromJson(dynamic value) => CreateTagDtoStatusEnumTypeTransformer().decode(value);

  static List<CreateTagDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTagDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTagDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateTagDtoStatusEnum] to String,
/// and [decode] dynamic data back to [CreateTagDtoStatusEnum].
class CreateTagDtoStatusEnumTypeTransformer {
  factory CreateTagDtoStatusEnumTypeTransformer() => _instance ??= const CreateTagDtoStatusEnumTypeTransformer._();

  const CreateTagDtoStatusEnumTypeTransformer._();

  String encode(CreateTagDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateTagDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateTagDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return CreateTagDtoStatusEnum.active;
        case r'deleted': return CreateTagDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateTagDtoStatusEnumTypeTransformer] instance.
  static CreateTagDtoStatusEnumTypeTransformer? _instance;
}


