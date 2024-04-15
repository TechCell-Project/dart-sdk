//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class UpdateSpuDto {
  /// Returns a new [UpdateSpuDto] instance.
  UpdateSpuDto({
    this.name,
    this.description,
    this.commonAttributes = const [],
  });

  /// Spu name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Spu description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Common attributes
  List<AttributeInProductSchemaDto> commonAttributes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSpuDto &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.commonAttributes, commonAttributes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (commonAttributes.hashCode);

  @override
  String toString() => 'UpdateSpuDto[name=$name, description=$description, commonAttributes=$commonAttributes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'commonAttributes'] = this.commonAttributes;
    return json;
  }

  /// Returns a new [UpdateSpuDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSpuDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSpuDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSpuDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSpuDto(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        commonAttributes: AttributeInProductSchemaDto.listFromJson(json[r'commonAttributes']),
      );
    }
    return null;
  }

  static List<UpdateSpuDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSpuDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSpuDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSpuDto> mapFromJson(dynamic json) {
    final map = <String, UpdateSpuDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSpuDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSpuDto-objects as value to a dart map
  static Map<String, List<UpdateSpuDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSpuDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSpuDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

