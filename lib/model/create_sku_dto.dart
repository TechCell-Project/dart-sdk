//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class CreateSkuDto {
  /// Returns a new [CreateSkuDto] instance.
  CreateSkuDto({
    required this.name,
    this.description,
    required this.spuId,
    required this.spuModelSlug,
    required this.price,
    required this.status,
    this.attributes = const [],
    this.tags = const [],
    this.imagePublicId,
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  String spuId;

  String spuModelSlug;

  PriceSchema price;

  CreateSkuDtoStatusEnum status;

  List<AttributeInProductSchema> attributes;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imagePublicId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSkuDto &&
    other.name == name &&
    other.description == description &&
    other.spuId == spuId &&
    other.spuModelSlug == spuModelSlug &&
    other.price == price &&
    other.status == status &&
    _deepEquality.equals(other.attributes, attributes) &&
    _deepEquality.equals(other.tags, tags) &&
    other.imagePublicId == imagePublicId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (spuId.hashCode) +
    (spuModelSlug.hashCode) +
    (price.hashCode) +
    (status.hashCode) +
    (attributes.hashCode) +
    (tags.hashCode) +
    (imagePublicId == null ? 0 : imagePublicId!.hashCode);

  @override
  String toString() => 'CreateSkuDto[name=$name, description=$description, spuId=$spuId, spuModelSlug=$spuModelSlug, price=$price, status=$status, attributes=$attributes, tags=$tags, imagePublicId=$imagePublicId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'spuId'] = this.spuId;
      json[r'spuModelSlug'] = this.spuModelSlug;
      json[r'price'] = this.price;
      json[r'status'] = this.status;
      json[r'attributes'] = this.attributes;
      json[r'tags'] = this.tags;
    if (this.imagePublicId != null) {
      json[r'imagePublicId'] = this.imagePublicId;
    } else {
      json[r'imagePublicId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSkuDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSkuDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSkuDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSkuDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSkuDto(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        spuId: mapValueOfType<String>(json, r'spuId')!,
        spuModelSlug: mapValueOfType<String>(json, r'spuModelSlug')!,
        price: PriceSchema.fromJson(json[r'price'])!,
        status: CreateSkuDtoStatusEnum.fromJson(json[r'status'])!,
        attributes: AttributeInProductSchema.listFromJson(json[r'attributes']),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        imagePublicId: mapValueOfType<String>(json, r'imagePublicId'),
      );
    }
    return null;
  }

  static List<CreateSkuDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSkuDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSkuDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSkuDto> mapFromJson(dynamic json) {
    final map = <String, CreateSkuDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSkuDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSkuDto-objects as value to a dart map
  static Map<String, List<CreateSkuDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSkuDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSkuDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'spuId',
    'spuModelSlug',
    'price',
    'status',
    'attributes',
  };
}


class CreateSkuDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateSkuDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const selling = CreateSkuDtoStatusEnum._(r'selling');
  static const deleted = CreateSkuDtoStatusEnum._(r'deleted');
  static const newlyReleased = CreateSkuDtoStatusEnum._(r'newly-released');

  /// List of all possible values in this [enum][CreateSkuDtoStatusEnum].
  static const values = <CreateSkuDtoStatusEnum>[
    selling,
    deleted,
    newlyReleased,
  ];

  static CreateSkuDtoStatusEnum? fromJson(dynamic value) => CreateSkuDtoStatusEnumTypeTransformer().decode(value);

  static List<CreateSkuDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSkuDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSkuDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateSkuDtoStatusEnum] to String,
/// and [decode] dynamic data back to [CreateSkuDtoStatusEnum].
class CreateSkuDtoStatusEnumTypeTransformer {
  factory CreateSkuDtoStatusEnumTypeTransformer() => _instance ??= const CreateSkuDtoStatusEnumTypeTransformer._();

  const CreateSkuDtoStatusEnumTypeTransformer._();

  String encode(CreateSkuDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateSkuDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateSkuDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'selling': return CreateSkuDtoStatusEnum.selling;
        case r'deleted': return CreateSkuDtoStatusEnum.deleted;
        case r'newly-released': return CreateSkuDtoStatusEnum.newlyReleased;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateSkuDtoStatusEnumTypeTransformer] instance.
  static CreateSkuDtoStatusEnumTypeTransformer? _instance;
}


