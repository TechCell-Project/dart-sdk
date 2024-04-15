//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SKU {
  /// Returns a new [SKU] instance.
  SKU({
    required this.name,
    this.description,
    required this.spuId,
    required this.spuModelSlug,
    required this.price,
    required this.image,
    required this.status,
    this.attributes = const [],
    this.tags = const [],
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

  SkuImageSchema image;

  SKUStatusEnum status;

  List<AttributeInProductSchema> attributes;

  List<String> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SKU &&
    other.name == name &&
    other.description == description &&
    other.spuId == spuId &&
    other.spuModelSlug == spuModelSlug &&
    other.price == price &&
    other.image == image &&
    other.status == status &&
    _deepEquality.equals(other.attributes, attributes) &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (spuId.hashCode) +
    (spuModelSlug.hashCode) +
    (price.hashCode) +
    (image.hashCode) +
    (status.hashCode) +
    (attributes.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'SKU[name=$name, description=$description, spuId=$spuId, spuModelSlug=$spuModelSlug, price=$price, image=$image, status=$status, attributes=$attributes, tags=$tags]';

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
      json[r'image'] = this.image;
      json[r'status'] = this.status;
      json[r'attributes'] = this.attributes;
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [SKU] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SKU? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SKU[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SKU[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SKU(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        spuId: mapValueOfType<String>(json, r'spuId')!,
        spuModelSlug: mapValueOfType<String>(json, r'spuModelSlug')!,
        price: PriceSchema.fromJson(json[r'price'])!,
        image: SkuImageSchema.fromJson(json[r'image'])!,
        status: SKUStatusEnum.fromJson(json[r'status'])!,
        attributes: AttributeInProductSchema.listFromJson(json[r'attributes']),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SKU> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SKU>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SKU.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SKU> mapFromJson(dynamic json) {
    final map = <String, SKU>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SKU.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SKU-objects as value to a dart map
  static Map<String, List<SKU>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SKU>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SKU.listFromJson(entry.value, growable: growable,);
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
    'image',
    'status',
    'attributes',
    'tags',
  };
}


class SKUStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SKUStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const selling = SKUStatusEnum._(r'selling');
  static const deleted = SKUStatusEnum._(r'deleted');
  static const newlyReleased = SKUStatusEnum._(r'newly-released');

  /// List of all possible values in this [enum][SKUStatusEnum].
  static const values = <SKUStatusEnum>[
    selling,
    deleted,
    newlyReleased,
  ];

  static SKUStatusEnum? fromJson(dynamic value) => SKUStatusEnumTypeTransformer().decode(value);

  static List<SKUStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SKUStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SKUStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SKUStatusEnum] to String,
/// and [decode] dynamic data back to [SKUStatusEnum].
class SKUStatusEnumTypeTransformer {
  factory SKUStatusEnumTypeTransformer() => _instance ??= const SKUStatusEnumTypeTransformer._();

  const SKUStatusEnumTypeTransformer._();

  String encode(SKUStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SKUStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SKUStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'selling': return SKUStatusEnum.selling;
        case r'deleted': return SKUStatusEnum.deleted;
        case r'newly-released': return SKUStatusEnum.newlyReleased;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SKUStatusEnumTypeTransformer] instance.
  static SKUStatusEnumTypeTransformer? _instance;
}


