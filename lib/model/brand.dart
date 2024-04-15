//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class Brand {
  /// Returns a new [Brand] instance.
  Brand({
    required this.slug,
    required this.name,
    required this.description,
    required this.status,
  });

  String slug;

  String name;

  String description;

  BrandStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Brand &&
    other.slug == slug &&
    other.name == name &&
    other.description == description &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug.hashCode) +
    (name.hashCode) +
    (description.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'Brand[slug=$slug, name=$name, description=$description, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
      json[r'description'] = this.description;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Brand] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Brand? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Brand[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Brand[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Brand(
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        status: BrandStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Brand> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Brand>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Brand.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Brand> mapFromJson(dynamic json) {
    final map = <String, Brand>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Brand.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Brand-objects as value to a dart map
  static Map<String, List<Brand>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Brand>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Brand.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slug',
    'name',
    'description',
    'status',
  };
}


class BrandStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BrandStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = BrandStatusEnum._(r'active');
  static const inactive = BrandStatusEnum._(r'inactive');
  static const deleted = BrandStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][BrandStatusEnum].
  static const values = <BrandStatusEnum>[
    active,
    inactive,
    deleted,
  ];

  static BrandStatusEnum? fromJson(dynamic value) => BrandStatusEnumTypeTransformer().decode(value);

  static List<BrandStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BrandStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BrandStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BrandStatusEnum] to String,
/// and [decode] dynamic data back to [BrandStatusEnum].
class BrandStatusEnumTypeTransformer {
  factory BrandStatusEnumTypeTransformer() => _instance ??= const BrandStatusEnumTypeTransformer._();

  const BrandStatusEnumTypeTransformer._();

  String encode(BrandStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BrandStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BrandStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return BrandStatusEnum.active;
        case r'inactive': return BrandStatusEnum.inactive;
        case r'deleted': return BrandStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BrandStatusEnumTypeTransformer] instance.
  static BrandStatusEnumTypeTransformer? _instance;
}


