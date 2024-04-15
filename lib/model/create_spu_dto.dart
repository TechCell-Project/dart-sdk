//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class CreateSpuDto {
  /// Returns a new [CreateSpuDto] instance.
  CreateSpuDto({
    required this.brandId,
    required this.name,
    this.description,
    this.commonAttributes = const [],
    this.models = const [],
    this.status,
  });

  /// Brand id
  String brandId;

  /// Spu name
  String name;

  /// Spu description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Common attributes
  List<AttributeInProductSchemaDto> commonAttributes;

  /// Models
  List<SPUModelSchemaDto> models;

  /// Spu status
  CreateSpuDtoStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSpuDto &&
    other.brandId == brandId &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.commonAttributes, commonAttributes) &&
    _deepEquality.equals(other.models, models) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brandId.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (commonAttributes.hashCode) +
    (models.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CreateSpuDto[brandId=$brandId, name=$name, description=$description, commonAttributes=$commonAttributes, models=$models, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'brandId'] = this.brandId;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'commonAttributes'] = this.commonAttributes;
      json[r'models'] = this.models;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSpuDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSpuDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSpuDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSpuDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSpuDto(
        brandId: mapValueOfType<String>(json, r'brandId')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        commonAttributes: AttributeInProductSchemaDto.listFromJson(json[r'commonAttributes']),
        models: SPUModelSchemaDto.listFromJson(json[r'models']),
        status: CreateSpuDtoStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<CreateSpuDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSpuDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSpuDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSpuDto> mapFromJson(dynamic json) {
    final map = <String, CreateSpuDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSpuDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSpuDto-objects as value to a dart map
  static Map<String, List<CreateSpuDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSpuDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSpuDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'brandId',
    'name',
  };
}

/// Spu status
class CreateSpuDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateSpuDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const available = CreateSpuDtoStatusEnum._(r'available');
  static const deleted = CreateSpuDtoStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][CreateSpuDtoStatusEnum].
  static const values = <CreateSpuDtoStatusEnum>[
    available,
    deleted,
  ];

  static CreateSpuDtoStatusEnum? fromJson(dynamic value) => CreateSpuDtoStatusEnumTypeTransformer().decode(value);

  static List<CreateSpuDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSpuDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSpuDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateSpuDtoStatusEnum] to String,
/// and [decode] dynamic data back to [CreateSpuDtoStatusEnum].
class CreateSpuDtoStatusEnumTypeTransformer {
  factory CreateSpuDtoStatusEnumTypeTransformer() => _instance ??= const CreateSpuDtoStatusEnumTypeTransformer._();

  const CreateSpuDtoStatusEnumTypeTransformer._();

  String encode(CreateSpuDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateSpuDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateSpuDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'available': return CreateSpuDtoStatusEnum.available;
        case r'deleted': return CreateSpuDtoStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateSpuDtoStatusEnumTypeTransformer] instance.
  static CreateSpuDtoStatusEnumTypeTransformer? _instance;
}


