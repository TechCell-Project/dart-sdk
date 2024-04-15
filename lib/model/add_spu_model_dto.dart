//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AddSpuModelDto {
  /// Returns a new [AddSpuModelDto] instance.
  AddSpuModelDto({
    this.models = const [],
  });

  /// Models
  List<SPUModelSchemaDto> models;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddSpuModelDto &&
    _deepEquality.equals(other.models, models);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (models.hashCode);

  @override
  String toString() => 'AddSpuModelDto[models=$models]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'models'] = this.models;
    return json;
  }

  /// Returns a new [AddSpuModelDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddSpuModelDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddSpuModelDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddSpuModelDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddSpuModelDto(
        models: SPUModelSchemaDto.listFromJson(json[r'models']),
      );
    }
    return null;
  }

  static List<AddSpuModelDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddSpuModelDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddSpuModelDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddSpuModelDto> mapFromJson(dynamic json) {
    final map = <String, AddSpuModelDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddSpuModelDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddSpuModelDto-objects as value to a dart map
  static Map<String, List<AddSpuModelDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddSpuModelDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddSpuModelDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

