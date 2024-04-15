//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class ImageSchema {
  /// Returns a new [ImageSchema] instance.
  ImageSchema({
    required this.publicId,
    required this.url,
    required this.isThumbnail,
  });

  String publicId;

  String url;

  bool isThumbnail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageSchema &&
    other.publicId == publicId &&
    other.url == url &&
    other.isThumbnail == isThumbnail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (publicId.hashCode) +
    (url.hashCode) +
    (isThumbnail.hashCode);

  @override
  String toString() => 'ImageSchema[publicId=$publicId, url=$url, isThumbnail=$isThumbnail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'publicId'] = this.publicId;
      json[r'url'] = this.url;
      json[r'isThumbnail'] = this.isThumbnail;
    return json;
  }

  /// Returns a new [ImageSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageSchema(
        publicId: mapValueOfType<String>(json, r'publicId')!,
        url: mapValueOfType<String>(json, r'url')!,
        isThumbnail: mapValueOfType<bool>(json, r'isThumbnail')!,
      );
    }
    return null;
  }

  static List<ImageSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageSchema> mapFromJson(dynamic json) {
    final map = <String, ImageSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageSchema-objects as value to a dart map
  static Map<String, List<ImageSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'publicId',
    'url',
    'isThumbnail',
  };
}

