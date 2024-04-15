//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AvatarSchema {
  /// Returns a new [AvatarSchema] instance.
  AvatarSchema({
    required this.publicId,
    required this.url,
  });

  String publicId;

  String url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AvatarSchema &&
    other.publicId == publicId &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (publicId.hashCode) +
    (url.hashCode);

  @override
  String toString() => 'AvatarSchema[publicId=$publicId, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'publicId'] = this.publicId;
      json[r'url'] = this.url;
    return json;
  }

  /// Returns a new [AvatarSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AvatarSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AvatarSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AvatarSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AvatarSchema(
        publicId: mapValueOfType<String>(json, r'publicId')!,
        url: mapValueOfType<String>(json, r'url')!,
      );
    }
    return null;
  }

  static List<AvatarSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AvatarSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AvatarSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AvatarSchema> mapFromJson(dynamic json) {
    final map = <String, AvatarSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AvatarSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AvatarSchema-objects as value to a dart map
  static Map<String, List<AvatarSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AvatarSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AvatarSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'publicId',
    'url',
  };
}

