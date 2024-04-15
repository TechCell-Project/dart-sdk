//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class ProvinceSchemaDTO {
  /// Returns a new [ProvinceSchemaDTO] instance.
  ProvinceSchemaDTO({
    required this.provinceId,
  });

  /// The id of province
  num provinceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProvinceSchemaDTO &&
    other.provinceId == provinceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provinceId.hashCode);

  @override
  String toString() => 'ProvinceSchemaDTO[provinceId=$provinceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provinceId'] = this.provinceId;
    return json;
  }

  /// Returns a new [ProvinceSchemaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProvinceSchemaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProvinceSchemaDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProvinceSchemaDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProvinceSchemaDTO(
        provinceId: num.parse('${json[r'provinceId']}'),
      );
    }
    return null;
  }

  static List<ProvinceSchemaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProvinceSchemaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProvinceSchemaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProvinceSchemaDTO> mapFromJson(dynamic json) {
    final map = <String, ProvinceSchemaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProvinceSchemaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProvinceSchemaDTO-objects as value to a dart map
  static Map<String, List<ProvinceSchemaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProvinceSchemaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProvinceSchemaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provinceId',
  };
}

