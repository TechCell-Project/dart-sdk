//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class BlockActivityLogDto {
  /// Returns a new [BlockActivityLogDto] instance.
  BlockActivityLogDto({
    required this.reason,
    this.note,
  });

  String reason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockActivityLogDto &&
    other.reason == reason &&
    other.note == note;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reason.hashCode) +
    (note == null ? 0 : note!.hashCode);

  @override
  String toString() => 'BlockActivityLogDto[reason=$reason, note=$note]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'reason'] = this.reason;
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    return json;
  }

  /// Returns a new [BlockActivityLogDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockActivityLogDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlockActivityLogDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlockActivityLogDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlockActivityLogDto(
        reason: mapValueOfType<String>(json, r'reason')!,
        note: mapValueOfType<String>(json, r'note'),
      );
    }
    return null;
  }

  static List<BlockActivityLogDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockActivityLogDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockActivityLogDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockActivityLogDto> mapFromJson(dynamic json) {
    final map = <String, BlockActivityLogDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockActivityLogDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockActivityLogDto-objects as value to a dart map
  static Map<String, List<BlockActivityLogDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockActivityLogDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockActivityLogDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reason',
  };
}

