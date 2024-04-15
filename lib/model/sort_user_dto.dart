//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class SortUserDto {
  /// Returns a new [SortUserDto] instance.
  SortUserDto({
    required this.orderBy,
    required this.order,
  });

  /// Key of User
  String orderBy;

  /// Order of sorting
  SortUserDtoOrderEnum order;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SortUserDto &&
    other.orderBy == orderBy &&
    other.order == order;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderBy.hashCode) +
    (order.hashCode);

  @override
  String toString() => 'SortUserDto[orderBy=$orderBy, order=$order]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'orderBy'] = this.orderBy;
      json[r'order'] = this.order;
    return json;
  }

  /// Returns a new [SortUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SortUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SortUserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SortUserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SortUserDto(
        orderBy: mapValueOfType<String>(json, r'orderBy')!,
        order: SortUserDtoOrderEnum.fromJson(json[r'order'])!,
      );
    }
    return null;
  }

  static List<SortUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SortUserDto> mapFromJson(dynamic json) {
    final map = <String, SortUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SortUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SortUserDto-objects as value to a dart map
  static Map<String, List<SortUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SortUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SortUserDto.listFromJson(entry.value, growable: growable,);
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
class SortUserDtoOrderEnum {
  /// Instantiate a new enum with the provided [value].
  const SortUserDtoOrderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asc = SortUserDtoOrderEnum._(r'asc');
  static const desc = SortUserDtoOrderEnum._(r'desc');

  /// List of all possible values in this [enum][SortUserDtoOrderEnum].
  static const values = <SortUserDtoOrderEnum>[
    asc,
    desc,
  ];

  static SortUserDtoOrderEnum? fromJson(dynamic value) => SortUserDtoOrderEnumTypeTransformer().decode(value);

  static List<SortUserDtoOrderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SortUserDtoOrderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SortUserDtoOrderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SortUserDtoOrderEnum] to String,
/// and [decode] dynamic data back to [SortUserDtoOrderEnum].
class SortUserDtoOrderEnumTypeTransformer {
  factory SortUserDtoOrderEnumTypeTransformer() => _instance ??= const SortUserDtoOrderEnumTypeTransformer._();

  const SortUserDtoOrderEnumTypeTransformer._();

  String encode(SortUserDtoOrderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SortUserDtoOrderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SortUserDtoOrderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'asc': return SortUserDtoOrderEnum.asc;
        case r'desc': return SortUserDtoOrderEnum.desc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SortUserDtoOrderEnumTypeTransformer] instance.
  static SortUserDtoOrderEnumTypeTransformer? _instance;
}


