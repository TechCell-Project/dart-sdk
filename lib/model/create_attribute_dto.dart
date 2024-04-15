//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class CreateAttributeDto {
  /// Returns a new [CreateAttributeDto] instance.
  CreateAttributeDto({
    required this.label,
    required this.name,
    this.unit,
    this.description,
  });

  /// Attribute label. Label must only contain lowercase letters and optional underscores
  String label;

  /// Attribute name, can be in any language
  String name;

  /// Unit abbreviation for this attribute
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// Attribute description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateAttributeDto &&
    other.label == label &&
    other.name == name &&
    other.unit == unit &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (name.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'CreateAttributeDto[label=$label, name=$name, unit=$unit, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'name'] = this.name;
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [CreateAttributeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateAttributeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateAttributeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateAttributeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateAttributeDto(
        label: mapValueOfType<String>(json, r'label')!,
        name: mapValueOfType<String>(json, r'name')!,
        unit: mapValueOfType<String>(json, r'unit'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<CreateAttributeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateAttributeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateAttributeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateAttributeDto> mapFromJson(dynamic json) {
    final map = <String, CreateAttributeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateAttributeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateAttributeDto-objects as value to a dart map
  static Map<String, List<CreateAttributeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateAttributeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateAttributeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'name',
  };
}

