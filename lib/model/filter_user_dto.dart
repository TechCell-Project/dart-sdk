//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class FilterUserDto {
  /// Returns a new [FilterUserDto] instance.
  FilterUserDto({
    this.roles = const [],
  });

  List<FilterUserDtoRolesEnum> roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterUserDto &&
    _deepEquality.equals(other.roles, roles);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (roles.hashCode);

  @override
  String toString() => 'FilterUserDto[roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'roles'] = this.roles;
    return json;
  }

  /// Returns a new [FilterUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterUserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterUserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterUserDto(
        roles: FilterUserDtoRolesEnum.listFromJson(json[r'roles']),
      );
    }
    return null;
  }

  static List<FilterUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterUserDto> mapFromJson(dynamic json) {
    final map = <String, FilterUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterUserDto-objects as value to a dart map
  static Map<String, List<FilterUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FilterUserDtoRolesEnum {
  /// Instantiate a new enum with the provided [value].
  const FilterUserDtoRolesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const manager = FilterUserDtoRolesEnum._(r'manager');
  static const customer = FilterUserDtoRolesEnum._(r'customer');
  static const sales = FilterUserDtoRolesEnum._(r'sales');
  static const warehouse = FilterUserDtoRolesEnum._(r'warehouse');
  static const dataEntry = FilterUserDtoRolesEnum._(r'data_entry');
  static const accountant = FilterUserDtoRolesEnum._(r'accountant');

  /// List of all possible values in this [enum][FilterUserDtoRolesEnum].
  static const values = <FilterUserDtoRolesEnum>[
    manager,
    customer,
    sales,
    warehouse,
    dataEntry,
    accountant,
  ];

  static FilterUserDtoRolesEnum? fromJson(dynamic value) => FilterUserDtoRolesEnumTypeTransformer().decode(value);

  static List<FilterUserDtoRolesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterUserDtoRolesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterUserDtoRolesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FilterUserDtoRolesEnum] to String,
/// and [decode] dynamic data back to [FilterUserDtoRolesEnum].
class FilterUserDtoRolesEnumTypeTransformer {
  factory FilterUserDtoRolesEnumTypeTransformer() => _instance ??= const FilterUserDtoRolesEnumTypeTransformer._();

  const FilterUserDtoRolesEnumTypeTransformer._();

  String encode(FilterUserDtoRolesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FilterUserDtoRolesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FilterUserDtoRolesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'manager': return FilterUserDtoRolesEnum.manager;
        case r'customer': return FilterUserDtoRolesEnum.customer;
        case r'sales': return FilterUserDtoRolesEnum.sales;
        case r'warehouse': return FilterUserDtoRolesEnum.warehouse;
        case r'data_entry': return FilterUserDtoRolesEnum.dataEntry;
        case r'accountant': return FilterUserDtoRolesEnum.accountant;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FilterUserDtoRolesEnumTypeTransformer] instance.
  static FilterUserDtoRolesEnumTypeTransformer? _instance;
}


