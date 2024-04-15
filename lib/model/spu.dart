//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SPU {
  /// Returns a new [SPU] instance.
  SPU({
    required this.brandId,
    required this.slug,
    required this.name,
    this.description,
    this.commonAttributes = const [],
    this.models = const [],
    required this.status,
  });

  String brandId;

  String slug;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<AttributeInProductSchema> commonAttributes;

  List<SPUModelSchema> models;

  SPUStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPU &&
    other.brandId == brandId &&
    other.slug == slug &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.commonAttributes, commonAttributes) &&
    _deepEquality.equals(other.models, models) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (brandId.hashCode) +
    (slug.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (commonAttributes.hashCode) +
    (models.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'SPU[brandId=$brandId, slug=$slug, name=$name, description=$description, commonAttributes=$commonAttributes, models=$models, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'brandId'] = this.brandId;
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'commonAttributes'] = this.commonAttributes;
      json[r'models'] = this.models;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [SPU] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPU? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPU[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPU[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPU(
        brandId: mapValueOfType<String>(json, r'brandId')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        commonAttributes: AttributeInProductSchema.listFromJson(json[r'commonAttributes']),
        models: SPUModelSchema.listFromJson(json[r'models']),
        status: SPUStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<SPU> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPU>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPU.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPU> mapFromJson(dynamic json) {
    final map = <String, SPU>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPU.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPU-objects as value to a dart map
  static Map<String, List<SPU>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPU>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SPU.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'brandId',
    'slug',
    'name',
    'commonAttributes',
    'models',
    'status',
  };
}


class SPUStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SPUStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const available = SPUStatusEnum._(r'available');
  static const deleted = SPUStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][SPUStatusEnum].
  static const values = <SPUStatusEnum>[
    available,
    deleted,
  ];

  static SPUStatusEnum? fromJson(dynamic value) => SPUStatusEnumTypeTransformer().decode(value);

  static List<SPUStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPUStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPUStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SPUStatusEnum] to String,
/// and [decode] dynamic data back to [SPUStatusEnum].
class SPUStatusEnumTypeTransformer {
  factory SPUStatusEnumTypeTransformer() => _instance ??= const SPUStatusEnumTypeTransformer._();

  const SPUStatusEnumTypeTransformer._();

  String encode(SPUStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SPUStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SPUStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'available': return SPUStatusEnum.available;
        case r'deleted': return SPUStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SPUStatusEnumTypeTransformer] instance.
  static SPUStatusEnumTypeTransformer? _instance;
}


