//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AuthUpdateDto {
  /// Returns a new [AuthUpdateDto] instance.
  AuthUpdateDto({
    this.firstName,
    this.lastName,
    this.password,
    this.oldPassword,
    this.address = const [],
    this.avatarImageId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oldPassword;

  List<UserAddressSchemaDTO> address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatarImageId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthUpdateDto &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.password == password &&
    other.oldPassword == oldPassword &&
    _deepEquality.equals(other.address, address) &&
    other.avatarImageId == avatarImageId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (oldPassword == null ? 0 : oldPassword!.hashCode) +
    (address.hashCode) +
    (avatarImageId == null ? 0 : avatarImageId!.hashCode);

  @override
  String toString() => 'AuthUpdateDto[firstName=$firstName, lastName=$lastName, password=$password, oldPassword=$oldPassword, address=$address, avatarImageId=$avatarImageId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    if (this.oldPassword != null) {
      json[r'oldPassword'] = this.oldPassword;
    } else {
      json[r'oldPassword'] = null;
    }
      json[r'address'] = this.address;
    if (this.avatarImageId != null) {
      json[r'avatarImageId'] = this.avatarImageId;
    } else {
      json[r'avatarImageId'] = null;
    }
    return json;
  }

  /// Returns a new [AuthUpdateDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthUpdateDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthUpdateDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthUpdateDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthUpdateDto(
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        password: mapValueOfType<String>(json, r'password'),
        oldPassword: mapValueOfType<String>(json, r'oldPassword'),
        address: UserAddressSchemaDTO.listFromJson(json[r'address']),
        avatarImageId: mapValueOfType<String>(json, r'avatarImageId'),
      );
    }
    return null;
  }

  static List<AuthUpdateDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthUpdateDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthUpdateDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthUpdateDto> mapFromJson(dynamic json) {
    final map = <String, AuthUpdateDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthUpdateDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthUpdateDto-objects as value to a dart map
  static Map<String, List<AuthUpdateDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthUpdateDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthUpdateDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

