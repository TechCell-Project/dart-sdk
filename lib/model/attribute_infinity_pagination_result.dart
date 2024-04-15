//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class AttributeInfinityPaginationResult {
  /// Returns a new [AttributeInfinityPaginationResult] instance.
  AttributeInfinityPaginationResult({
    this.data = const [],
    required this.hasNextPage,
  });

  List<Attribute> data;

  bool hasNextPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttributeInfinityPaginationResult &&
    _deepEquality.equals(other.data, data) &&
    other.hasNextPage == hasNextPage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (hasNextPage.hashCode);

  @override
  String toString() => 'AttributeInfinityPaginationResult[data=$data, hasNextPage=$hasNextPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'hasNextPage'] = this.hasNextPage;
    return json;
  }

  /// Returns a new [AttributeInfinityPaginationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttributeInfinityPaginationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttributeInfinityPaginationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttributeInfinityPaginationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttributeInfinityPaginationResult(
        data: Attribute.listFromJson(json[r'data']),
        hasNextPage: mapValueOfType<bool>(json, r'hasNextPage')!,
      );
    }
    return null;
  }

  static List<AttributeInfinityPaginationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttributeInfinityPaginationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttributeInfinityPaginationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttributeInfinityPaginationResult> mapFromJson(dynamic json) {
    final map = <String, AttributeInfinityPaginationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttributeInfinityPaginationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttributeInfinityPaginationResult-objects as value to a dart map
  static Map<String, List<AttributeInfinityPaginationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttributeInfinityPaginationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttributeInfinityPaginationResult.listFromJson(entry.value, growable: growable,);
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

