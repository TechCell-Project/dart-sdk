//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AuthForgotPasswordDto {
  /// Returns a new [AuthForgotPasswordDto] instance.
  AuthForgotPasswordDto({
    required this.email,
    this.returnUrl,
  });

  /// User email
  String email;

  /// Return url
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? returnUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthForgotPasswordDto &&
    other.email == email &&
    other.returnUrl == returnUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (returnUrl == null ? 0 : returnUrl!.hashCode);

  @override
  String toString() => 'AuthForgotPasswordDto[email=$email, returnUrl=$returnUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
    if (this.returnUrl != null) {
      json[r'returnUrl'] = this.returnUrl;
    } else {
      json[r'returnUrl'] = null;
    }
    return json;
  }

  /// Returns a new [AuthForgotPasswordDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthForgotPasswordDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthForgotPasswordDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthForgotPasswordDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthForgotPasswordDto(
        email: mapValueOfType<String>(json, r'email')!,
        returnUrl: mapValueOfType<String>(json, r'returnUrl'),
      );
    }
    return null;
  }

  static List<AuthForgotPasswordDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthForgotPasswordDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthForgotPasswordDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthForgotPasswordDto> mapFromJson(dynamic json) {
    final map = <String, AuthForgotPasswordDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthForgotPasswordDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthForgotPasswordDto-objects as value to a dart map
  static Map<String, List<AuthForgotPasswordDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthForgotPasswordDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthForgotPasswordDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
  };
}

