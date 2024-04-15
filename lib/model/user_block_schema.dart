//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class UserBlockSchema {
  /// Returns a new [UserBlockSchema] instance.
  UserBlockSchema({
    required this.isBlocked,
    this.activityLogs = const [],
  });

  bool isBlocked;

  List<BlockActivityLog> activityLogs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserBlockSchema &&
    other.isBlocked == isBlocked &&
    _deepEquality.equals(other.activityLogs, activityLogs);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isBlocked.hashCode) +
    (activityLogs.hashCode);

  @override
  String toString() => 'UserBlockSchema[isBlocked=$isBlocked, activityLogs=$activityLogs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isBlocked'] = this.isBlocked;
      json[r'activityLogs'] = this.activityLogs;
    return json;
  }

  /// Returns a new [UserBlockSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserBlockSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserBlockSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserBlockSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserBlockSchema(
        isBlocked: mapValueOfType<bool>(json, r'isBlocked')!,
        activityLogs: BlockActivityLog.listFromJson(json[r'activityLogs']),
      );
    }
    return null;
  }

  static List<UserBlockSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserBlockSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserBlockSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserBlockSchema> mapFromJson(dynamic json) {
    final map = <String, UserBlockSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserBlockSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserBlockSchema-objects as value to a dart map
  static Map<String, List<UserBlockSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserBlockSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserBlockSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isBlocked',
    'activityLogs',
  };
}

