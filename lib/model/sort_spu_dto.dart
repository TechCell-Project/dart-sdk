//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SortSpuDto {
  /// Returns a new [SortSpuDto] instance.
  SortSpuDto({
    required this.orderBy,
    required this.order,
  });

  /// Key of Entity to sort
  String orderBy;

  /// Order of sorting
  SortSpuDtoOrderEnum order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SortSpuDto &&
    other.orderBy == orderBy &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBy.hashCode) +
    (order.hashCode);

  @override
  String toString() => 'SortSpuDto[orderBy=$orderBy, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'orderBy'] = this.orderBy;
      json[r'order'] = this.order;
    return json;
  }

  /// Returns a new [SortSpuDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SortSpuDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SortSpuDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SortSpuDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SortSpuDto(
        orderBy: mapValueOfType<String>(json, r'orderBy')!,
        order: SortSpuDtoOrderEnum.fromJson(json[r'order'])!,
      );
    }
    return null;
  }

  static List<SortSpuDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortSpuDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortSpuDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SortSpuDto> mapFromJson(dynamic json) {
    final map = <String, SortSpuDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortSpuDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SortSpuDto-objects as value to a dart map
  static Map<String, List<SortSpuDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SortSpuDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SortSpuDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'orderBy',
    'order',
  };
}

/// Order of sorting
class SortSpuDtoOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const SortSpuDtoOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = SortSpuDtoOrderEnum._(r'asc');
  static const desc = SortSpuDtoOrderEnum._(r'desc');

  /// List of all possible values in this [enum][SortSpuDtoOrderEnum].
  static const values = <SortSpuDtoOrderEnum>[
    asc,
    desc,
  ];

  static SortSpuDtoOrderEnum? fromJson(dynamic value) => SortSpuDtoOrderEnumTypeTransformer().decode(value);

  static List<SortSpuDtoOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortSpuDtoOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortSpuDtoOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SortSpuDtoOrderEnum] to String,
/// and [decode] dynamic data back to [SortSpuDtoOrderEnum].
class SortSpuDtoOrderEnumTypeTransformer {
  factory SortSpuDtoOrderEnumTypeTransformer() => _instance ??= const SortSpuDtoOrderEnumTypeTransformer._();

  const SortSpuDtoOrderEnumTypeTransformer._();

  String encode(SortSpuDtoOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SortSpuDtoOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SortSpuDtoOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return SortSpuDtoOrderEnum.asc;
        case r'desc': return SortSpuDtoOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SortSpuDtoOrderEnumTypeTransformer] instance.
  static SortSpuDtoOrderEnumTypeTransformer? _instance;
}


