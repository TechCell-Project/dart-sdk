//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SortAttributeDto {
  /// Returns a new [SortAttributeDto] instance.
  SortAttributeDto({
    required this.orderBy,
    required this.order,
  });

  String orderBy;

  SortAttributeDtoOrderEnum order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SortAttributeDto &&
    other.orderBy == orderBy &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBy.hashCode) +
    (order.hashCode);

  @override
  String toString() => 'SortAttributeDto[orderBy=$orderBy, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'orderBy'] = this.orderBy;
      json[r'order'] = this.order;
    return json;
  }

  /// Returns a new [SortAttributeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SortAttributeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SortAttributeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SortAttributeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SortAttributeDto(
        orderBy: mapValueOfType<String>(json, r'orderBy')!,
        order: SortAttributeDtoOrderEnum.fromJson(json[r'order'])!,
      );
    }
    return null;
  }

  static List<SortAttributeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortAttributeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortAttributeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SortAttributeDto> mapFromJson(dynamic json) {
    final map = <String, SortAttributeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortAttributeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SortAttributeDto-objects as value to a dart map
  static Map<String, List<SortAttributeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SortAttributeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SortAttributeDto.listFromJson(entry.value, growable: growable,);
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


class SortAttributeDtoOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const SortAttributeDtoOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = SortAttributeDtoOrderEnum._(r'asc');
  static const desc = SortAttributeDtoOrderEnum._(r'desc');

  /// List of all possible values in this [enum][SortAttributeDtoOrderEnum].
  static const values = <SortAttributeDtoOrderEnum>[
    asc,
    desc,
  ];

  static SortAttributeDtoOrderEnum? fromJson(dynamic value) => SortAttributeDtoOrderEnumTypeTransformer().decode(value);

  static List<SortAttributeDtoOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortAttributeDtoOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortAttributeDtoOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SortAttributeDtoOrderEnum] to String,
/// and [decode] dynamic data back to [SortAttributeDtoOrderEnum].
class SortAttributeDtoOrderEnumTypeTransformer {
  factory SortAttributeDtoOrderEnumTypeTransformer() => _instance ??= const SortAttributeDtoOrderEnumTypeTransformer._();

  const SortAttributeDtoOrderEnumTypeTransformer._();

  String encode(SortAttributeDtoOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SortAttributeDtoOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SortAttributeDtoOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return SortAttributeDtoOrderEnum.asc;
        case r'desc': return SortAttributeDtoOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SortAttributeDtoOrderEnumTypeTransformer] instance.
  static SortAttributeDtoOrderEnumTypeTransformer? _instance;
}


