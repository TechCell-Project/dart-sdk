//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SPUModelSchemaDto {
  /// Returns a new [SPUModelSchemaDto] instance.
  SPUModelSchemaDto({
    required this.slug,
    required this.name,
    this.description,
    this.images = const [],
    this.attributes = const [],
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

  List<ImageSchemaDto> images;

  /// Model attributes
  List<AttributeInProductSchemaDto> attributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SPUModelSchemaDto &&
    other.slug == slug &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.images, images) &&
    _deepEquality.equals(other.attributes, attributes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (images.hashCode) +
    (attributes.hashCode);

  @override
  String toString() => 'SPUModelSchemaDto[slug=$slug, name=$name, description=$description, images=$images, attributes=$attributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'images'] = this.images;
      json[r'attributes'] = this.attributes;
    return json;
  }

  /// Returns a new [SPUModelSchemaDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SPUModelSchemaDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SPUModelSchemaDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SPUModelSchemaDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SPUModelSchemaDto(
        slug: mapValueOfType<String>(json, r'slug')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        images: ImageSchemaDto.listFromJson(json[r'images']),
        attributes: AttributeInProductSchemaDto.listFromJson(json[r'attributes']),
      );
    }
    return null;
  }

  static List<SPUModelSchemaDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SPUModelSchemaDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SPUModelSchemaDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SPUModelSchemaDto> mapFromJson(dynamic json) {
    final map = <String, SPUModelSchemaDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SPUModelSchemaDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SPUModelSchemaDto-objects as value to a dart map
  static Map<String, List<SPUModelSchemaDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SPUModelSchemaDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SPUModelSchemaDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slug',
    'name',
    'images',
    'attributes',
  };
}

