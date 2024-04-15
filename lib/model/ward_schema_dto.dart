//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class WardSchemaDTO {
  /// Returns a new [WardSchemaDTO] instance.
  WardSchemaDTO({
    required this.wardCode,
  });

  /// The code of ward
  String wardCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WardSchemaDTO &&
    other.wardCode == wardCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (wardCode.hashCode);

  @override
  String toString() => 'WardSchemaDTO[wardCode=$wardCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wardCode'] = this.wardCode;
    return json;
  }

  /// Returns a new [WardSchemaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WardSchemaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WardSchemaDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WardSchemaDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WardSchemaDTO(
        wardCode: mapValueOfType<String>(json, r'wardCode')!,
      );
    }
    return null;
  }

  static List<WardSchemaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WardSchemaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WardSchemaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WardSchemaDTO> mapFromJson(dynamic json) {
    final map = <String, WardSchemaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WardSchemaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WardSchemaDTO-objects as value to a dart map
  static Map<String, List<WardSchemaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WardSchemaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WardSchemaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'wardCode',
  };
}

