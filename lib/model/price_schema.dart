//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class PriceSchema {
  /// Returns a new [PriceSchema] instance.
  PriceSchema({
    required this.base,
    required this.special,
  });

  num base;

  num special;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PriceSchema &&
    other.base == base &&
    other.special == special;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base.hashCode) +
    (special.hashCode);

  @override
  String toString() => 'PriceSchema[base=$base, special=$special]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'base'] = this.base;
      json[r'special'] = this.special;
    return json;
  }

  /// Returns a new [PriceSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PriceSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PriceSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PriceSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PriceSchema(
        base: num.parse('${json[r'base']}'),
        special: num.parse('${json[r'special']}'),
      );
    }
    return null;
  }

  static List<PriceSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PriceSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PriceSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PriceSchema> mapFromJson(dynamic json) {
    final map = <String, PriceSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PriceSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PriceSchema-objects as value to a dart map
  static Map<String, List<PriceSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PriceSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PriceSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'base',
    'special',
  };
}

