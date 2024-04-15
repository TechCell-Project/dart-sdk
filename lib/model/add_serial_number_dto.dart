//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AddSerialNumberDto {
  /// Returns a new [AddSerialNumberDto] instance.
  AddSerialNumberDto({
    this.serialNumbers = const [],
  });

  /// Serial numbers
  List<String> serialNumbers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddSerialNumberDto &&
    _deepEquality.equals(other.serialNumbers, serialNumbers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serialNumbers.hashCode);

  @override
  String toString() => 'AddSerialNumberDto[serialNumbers=$serialNumbers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serialNumbers'] = this.serialNumbers;
    return json;
  }

  /// Returns a new [AddSerialNumberDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddSerialNumberDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddSerialNumberDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddSerialNumberDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddSerialNumberDto(
        serialNumbers: json[r'serialNumbers'] is Iterable
            ? (json[r'serialNumbers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AddSerialNumberDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddSerialNumberDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddSerialNumberDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddSerialNumberDto> mapFromJson(dynamic json) {
    final map = <String, AddSerialNumberDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddSerialNumberDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddSerialNumberDto-objects as value to a dart map
  static Map<String, List<AddSerialNumberDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddSerialNumberDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddSerialNumberDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'serialNumbers',
  };
}

