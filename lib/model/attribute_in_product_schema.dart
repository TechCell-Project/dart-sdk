//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AttributeInProductSchema {
  /// Returns a new [AttributeInProductSchema] instance.
  AttributeInProductSchema({
    required this.k,
    required this.v,
    this.u,
    required this.name,
  });

  String k;

  String v;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? u;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttributeInProductSchema &&
    other.k == k &&
    other.v == v &&
    other.u == u &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (k.hashCode) +
    (v.hashCode) +
    (u == null ? 0 : u!.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'AttributeInProductSchema[k=$k, v=$v, u=$u, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'k'] = this.k;
      json[r'v'] = this.v;
    if (this.u != null) {
      json[r'u'] = this.u;
    } else {
      json[r'u'] = null;
    }
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [AttributeInProductSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttributeInProductSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttributeInProductSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttributeInProductSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttributeInProductSchema(
        k: mapValueOfType<String>(json, r'k')!,
        v: mapValueOfType<String>(json, r'v')!,
        u: mapValueOfType<String>(json, r'u'),
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<AttributeInProductSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttributeInProductSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttributeInProductSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttributeInProductSchema> mapFromJson(dynamic json) {
    final map = <String, AttributeInProductSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttributeInProductSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttributeInProductSchema-objects as value to a dart map
  static Map<String, List<AttributeInProductSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttributeInProductSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttributeInProductSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'k',
    'v',
    'name',
  };
}

