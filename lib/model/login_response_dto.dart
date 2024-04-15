//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class LoginResponseDto {
  /// Returns a new [LoginResponseDto] instance.
  LoginResponseDto({
    required this.accessToken,
    required this.accessTokenExpires,
    required this.refreshToken,
    required this.user,
  });

  String accessToken;

  num accessTokenExpires;

  String refreshToken;

  User user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginResponseDto &&
    other.accessToken == accessToken &&
    other.accessTokenExpires == accessTokenExpires &&
    other.refreshToken == refreshToken &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken.hashCode) +
    (accessTokenExpires.hashCode) +
    (refreshToken.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'LoginResponseDto[accessToken=$accessToken, accessTokenExpires=$accessTokenExpires, refreshToken=$refreshToken, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessToken'] = this.accessToken;
      json[r'accessTokenExpires'] = this.accessTokenExpires;
      json[r'refreshToken'] = this.refreshToken;
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [LoginResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginResponseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginResponseDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginResponseDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginResponseDto(
        accessToken: mapValueOfType<String>(json, r'accessToken')!,
        accessTokenExpires: num.parse('${json[r'accessTokenExpires']}'),
        refreshToken: mapValueOfType<String>(json, r'refreshToken')!,
        user: User.fromJson(json[r'user'])!,
      );
    }
    return null;
  }

  static List<LoginResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginResponseDto> mapFromJson(dynamic json) {
    final map = <String, LoginResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginResponseDto-objects as value to a dart map
  static Map<String, List<LoginResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accessToken',
    'accessTokenExpires',
    'refreshToken',
    'user',
  };
}

