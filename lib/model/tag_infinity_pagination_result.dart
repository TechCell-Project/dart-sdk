//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class TagInfinityPaginationResult {
  /// Returns a new [TagInfinityPaginationResult] instance.
  TagInfinityPaginationResult({
    this.data = const [],
    required this.hasNextPage,
  });

  List<Tag> data;

  bool hasNextPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TagInfinityPaginationResult &&
    _deepEquality.equals(other.data, data) &&
    other.hasNextPage == hasNextPage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (hasNextPage.hashCode);

  @override
  String toString() => 'TagInfinityPaginationResult[data=$data, hasNextPage=$hasNextPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'hasNextPage'] = this.hasNextPage;
    return json;
  }

  /// Returns a new [TagInfinityPaginationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TagInfinityPaginationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TagInfinityPaginationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TagInfinityPaginationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TagInfinityPaginationResult(
        data: Tag.listFromJson(json[r'data']),
        hasNextPage: mapValueOfType<bool>(json, r'hasNextPage')!,
      );
    }
    return null;
  }

  static List<TagInfinityPaginationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TagInfinityPaginationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TagInfinityPaginationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TagInfinityPaginationResult> mapFromJson(dynamic json) {
    final map = <String, TagInfinityPaginationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TagInfinityPaginationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TagInfinityPaginationResult-objects as value to a dart map
  static Map<String, List<TagInfinityPaginationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TagInfinityPaginationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TagInfinityPaginationResult.listFromJson(entry.value, growable: growable,);
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

