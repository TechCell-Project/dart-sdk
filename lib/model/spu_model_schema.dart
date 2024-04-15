//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SPUModelSchema {
  /// Returns a new [SPUModelSchema] instance.
  SPUModelSchema({
    required this.slug,
    required this.name,
    this.description,
    this.attributes = const [],
    this.images = const [],
  });

  String slug;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<AttributeInProductSchema> attributes;

  List<ImageSchema> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPUModelSchema &&
    other.slug == slug &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.attributes, attributes) &&
    _deepEquality.equals(other.images, images);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (attributes.hashCode) +
    (images.hashCode);

  @override
  String toString() => 'SPUModelSchema[slug=$slug, name=$name, description=$description, attributes=$attributes, images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'attributes'] = this.attributes;
      json[r'images'] = this.images;
    return json;
  }

  /// Returns a new [SPUModelSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPUModelSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPUModelSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPUModelSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPUModelSchema(
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        attributes: AttributeInProductSchema.listFromJson(json[r'attributes']),
        images: ImageSchema.listFromJson(json[r'images']),
      );
    }
    return null;
  }

  static List<SPUModelSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPUModelSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPUModelSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPUModelSchema> mapFromJson(dynamic json) {
    final map = <String, SPUModelSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPUModelSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPUModelSchema-objects as value to a dart map
  static Map<String, List<SPUModelSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPUModelSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SPUModelSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slug',
    'name',
    'attributes',
    'images',
  };
}

