//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class BlockActivityLog {
  /// Returns a new [BlockActivityLog] instance.
  BlockActivityLog({
    required this.action,
    required this.actionAt,
    required this.actionBy,
    required this.reason,
    required this.note,
  });

  BlockActivityLogActionEnum action;

  DateTime actionAt;

  String actionBy;

  String reason;

  String note;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockActivityLog &&
    other.action == action &&
    other.actionAt == actionAt &&
    other.actionBy == actionBy &&
    other.reason == reason &&
    other.note == note;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (actionAt.hashCode) +
    (actionBy.hashCode) +
    (reason.hashCode) +
    (note.hashCode);

  @override
  String toString() => 'BlockActivityLog[action=$action, actionAt=$actionAt, actionBy=$actionBy, reason=$reason, note=$note]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
      json[r'actionAt'] = this.actionAt.toUtc().toIso8601String();
      json[r'actionBy'] = this.actionBy;
      json[r'reason'] = this.reason;
      json[r'note'] = this.note;
    return json;
  }

  /// Returns a new [BlockActivityLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockActivityLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlockActivityLog[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlockActivityLog[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlockActivityLog(
        action: BlockActivityLogActionEnum.fromJson(json[r'action'])!,
        actionAt: mapDateTime(json, r'actionAt', r'')!,
        actionBy: mapValueOfType<String>(json, r'actionBy')!,
        reason: mapValueOfType<String>(json, r'reason')!,
        note: mapValueOfType<String>(json, r'note')!,
      );
    }
    return null;
  }

  static List<BlockActivityLog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockActivityLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockActivityLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockActivityLog> mapFromJson(dynamic json) {
    final map = <String, BlockActivityLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockActivityLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockActivityLog-objects as value to a dart map
  static Map<String, List<BlockActivityLog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockActivityLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockActivityLog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
    'actionAt',
    'actionBy',
    'reason',
    'note',
  };
}


class BlockActivityLogActionEnum {
  /// Instantiate a new enum with the provided [value].
  const BlockActivityLogActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const block = BlockActivityLogActionEnum._(r'block');
  static const unblock = BlockActivityLogActionEnum._(r'unblock');

  /// List of all possible values in this [enum][BlockActivityLogActionEnum].
  static const values = <BlockActivityLogActionEnum>[
    block,
    unblock,
  ];

  static BlockActivityLogActionEnum? fromJson(dynamic value) => BlockActivityLogActionEnumTypeTransformer().decode(value);

  static List<BlockActivityLogActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockActivityLogActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockActivityLogActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BlockActivityLogActionEnum] to String,
/// and [decode] dynamic data back to [BlockActivityLogActionEnum].
class BlockActivityLogActionEnumTypeTransformer {
  factory BlockActivityLogActionEnumTypeTransformer() => _instance ??= const BlockActivityLogActionEnumTypeTransformer._();

  const BlockActivityLogActionEnumTypeTransformer._();

  String encode(BlockActivityLogActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BlockActivityLogActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BlockActivityLogActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'block': return BlockActivityLogActionEnum.block;
        case r'unblock': return BlockActivityLogActionEnum.unblock;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BlockActivityLogActionEnumTypeTransformer] instance.
  static BlockActivityLogActionEnumTypeTransformer? _instance;
}


