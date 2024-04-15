//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class Tag {
  /// Returns a new [Tag] instance.
  Tag({
    required this.slug,
    required this.name,
    required this.description,
    required this.status,
  });

  String slug;

  String name;

  String description;

  TagStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tag &&
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
  String toString() => 'Tag[slug=$slug, name=$name, description=$description, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
      json[r'description'] = this.description;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Tag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tag(
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        status: TagStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Tag> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tag> mapFromJson(dynamic json) {
    final map = <String, Tag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tag-objects as value to a dart map
  static Map<String, List<Tag>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tag>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tag.listFromJson(entry.value, growable: growable,);
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


class TagStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const TagStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = TagStatusEnum._(r'active');
  static const deleted = TagStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][TagStatusEnum].
  static const values = <TagStatusEnum>[
    active,
    deleted,
  ];

  static TagStatusEnum? fromJson(dynamic value) => TagStatusEnumTypeTransformer().decode(value);

  static List<TagStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TagStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TagStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TagStatusEnum] to String,
/// and [decode] dynamic data back to [TagStatusEnum].
class TagStatusEnumTypeTransformer {
  factory TagStatusEnumTypeTransformer() => _instance ??= const TagStatusEnumTypeTransformer._();

  const TagStatusEnumTypeTransformer._();

  String encode(TagStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TagStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TagStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'active': return TagStatusEnum.active;
        case r'deleted': return TagStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TagStatusEnumTypeTransformer] instance.
  static TagStatusEnumTypeTransformer? _instance;
}


