//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class BlockUserDto {
  /// Returns a new [BlockUserDto] instance.
  BlockUserDto({
    required this.action,
    required this.activityLogs,
  });

  BlockUserDtoActionEnum action;

  BlockActivityLogDto activityLogs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockUserDto &&
    other.action == action &&
    other.activityLogs == activityLogs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (activityLogs.hashCode);

  @override
  String toString() => 'BlockUserDto[action=$action, activityLogs=$activityLogs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
      json[r'activityLogs'] = this.activityLogs;
    return json;
  }

  /// Returns a new [BlockUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlockUserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlockUserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlockUserDto(
        action: BlockUserDtoActionEnum.fromJson(json[r'action'])!,
        activityLogs: BlockActivityLogDto.fromJson(json[r'activityLogs'])!,
      );
    }
    return null;
  }

  static List<BlockUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockUserDto> mapFromJson(dynamic json) {
    final map = <String, BlockUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockUserDto-objects as value to a dart map
  static Map<String, List<BlockUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
    'activityLogs',
  };
}


class BlockUserDtoActionEnum {
  /// Instantiate a new enum with the provided [value].
  const BlockUserDtoActionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const block = BlockUserDtoActionEnum._(r'block');
  static const unblock = BlockUserDtoActionEnum._(r'unblock');

  /// List of all possible values in this [enum][BlockUserDtoActionEnum].
  static const values = <BlockUserDtoActionEnum>[
    block,
    unblock,
  ];

  static BlockUserDtoActionEnum? fromJson(dynamic value) => BlockUserDtoActionEnumTypeTransformer().decode(value);

  static List<BlockUserDtoActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockUserDtoActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockUserDtoActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BlockUserDtoActionEnum] to String,
/// and [decode] dynamic data back to [BlockUserDtoActionEnum].
class BlockUserDtoActionEnumTypeTransformer {
  factory BlockUserDtoActionEnumTypeTransformer() => _instance ??= const BlockUserDtoActionEnumTypeTransformer._();

  const BlockUserDtoActionEnumTypeTransformer._();

  String encode(BlockUserDtoActionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BlockUserDtoActionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BlockUserDtoActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'block': return BlockUserDtoActionEnum.block;
        case r'unblock': return BlockUserDtoActionEnum.unblock;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BlockUserDtoActionEnumTypeTransformer] instance.
  static BlockUserDtoActionEnumTypeTransformer? _instance;
}


