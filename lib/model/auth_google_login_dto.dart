//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AuthGoogleLoginDto {
  /// Returns a new [AuthGoogleLoginDto] instance.
  AuthGoogleLoginDto({
    required this.idToken,
  });

  String idToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthGoogleLoginDto &&
    other.idToken == idToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idToken.hashCode);

  @override
  String toString() => 'AuthGoogleLoginDto[idToken=$idToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'idToken'] = this.idToken;
    return json;
  }

  /// Returns a new [AuthGoogleLoginDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthGoogleLoginDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthGoogleLoginDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthGoogleLoginDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthGoogleLoginDto(
        idToken: mapValueOfType<String>(json, r'idToken')!,
      );
    }
    return null;
  }

  static List<AuthGoogleLoginDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthGoogleLoginDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthGoogleLoginDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthGoogleLoginDto> mapFromJson(dynamic json) {
    final map = <String, AuthGoogleLoginDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthGoogleLoginDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthGoogleLoginDto-objects as value to a dart map
  static Map<String, List<AuthGoogleLoginDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthGoogleLoginDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthGoogleLoginDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'idToken',
  };
}

