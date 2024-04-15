//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class UserInfinityPaginationResult {
  /// Returns a new [UserInfinityPaginationResult] instance.
  UserInfinityPaginationResult({
    this.data = const [],
    required this.hasNextPage,
  });

  List<User> data;

  bool hasNextPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserInfinityPaginationResult &&
    _deepEquality.equals(other.data, data) &&
    other.hasNextPage == hasNextPage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (hasNextPage.hashCode);

  @override
  String toString() => 'UserInfinityPaginationResult[data=$data, hasNextPage=$hasNextPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'hasNextPage'] = this.hasNextPage;
    return json;
  }

  /// Returns a new [UserInfinityPaginationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserInfinityPaginationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserInfinityPaginationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserInfinityPaginationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserInfinityPaginationResult(
        data: User.listFromJson(json[r'data']),
        hasNextPage: mapValueOfType<bool>(json, r'hasNextPage')!,
      );
    }
    return null;
  }

  static List<UserInfinityPaginationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserInfinityPaginationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserInfinityPaginationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserInfinityPaginationResult> mapFromJson(dynamic json) {
    final map = <String, UserInfinityPaginationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserInfinityPaginationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserInfinityPaginationResult-objects as value to a dart map
  static Map<String, List<UserInfinityPaginationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserInfinityPaginationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserInfinityPaginationResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'hasNextPage',
  };
}

