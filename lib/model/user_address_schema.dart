//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class UserAddressSchema {
  /// Returns a new [UserAddressSchema] instance.
  UserAddressSchema({
    required this.provinceLevel,
    required this.districtLevel,
    required this.wardLevel,
    required this.detail,
    required this.isDefault,
    required this.customerName,
    required this.phoneNumbers,
    this.type = const UserAddressSchemaTypeEnum._('other'),
  });

  ProvinceLevel provinceLevel;

  DistrictLevel districtLevel;

  WardLevel wardLevel;

  String detail;

  bool isDefault;

  String customerName;

  /// The phone number of customer
  String phoneNumbers;

  UserAddressSchemaTypeEnum type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAddressSchema &&
    other.provinceLevel == provinceLevel &&
    other.districtLevel == districtLevel &&
    other.wardLevel == wardLevel &&
    other.detail == detail &&
    other.isDefault == isDefault &&
    other.customerName == customerName &&
    other.phoneNumbers == phoneNumbers &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provinceLevel.hashCode) +
    (districtLevel.hashCode) +
    (wardLevel.hashCode) +
    (detail.hashCode) +
    (isDefault.hashCode) +
    (customerName.hashCode) +
    (phoneNumbers.hashCode) +
    (type.hashCode);

  @override
  String toString() => 'UserAddressSchema[provinceLevel=$provinceLevel, districtLevel=$districtLevel, wardLevel=$wardLevel, detail=$detail, isDefault=$isDefault, customerName=$customerName, phoneNumbers=$phoneNumbers, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provinceLevel'] = this.provinceLevel;
      json[r'districtLevel'] = this.districtLevel;
      json[r'wardLevel'] = this.wardLevel;
      json[r'detail'] = this.detail;
      json[r'isDefault'] = this.isDefault;
      json[r'customerName'] = this.customerName;
      json[r'phoneNumbers'] = this.phoneNumbers;
      json[r'type'] = this.type;
    return json;
  }

  /// Returns a new [UserAddressSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAddressSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAddressSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAddressSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAddressSchema(
        provinceLevel: ProvinceLevel.fromJson(json[r'provinceLevel'])!,
        districtLevel: DistrictLevel.fromJson(json[r'districtLevel'])!,
        wardLevel: WardLevel.fromJson(json[r'wardLevel'])!,
        detail: mapValueOfType<String>(json, r'detail')!,
        isDefault: mapValueOfType<bool>(json, r'isDefault')!,
        customerName: mapValueOfType<String>(json, r'customerName')!,
        phoneNumbers: mapValueOfType<String>(json, r'phoneNumbers')!,
        type: UserAddressSchemaTypeEnum.fromJson(json[r'type'])!,
      );
    }
    return null;
  }

  static List<UserAddressSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAddressSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAddressSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAddressSchema> mapFromJson(dynamic json) {
    final map = <String, UserAddressSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAddressSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAddressSchema-objects as value to a dart map
  static Map<String, List<UserAddressSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAddressSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAddressSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provinceLevel',
    'districtLevel',
    'wardLevel',
    'detail',
    'isDefault',
    'customerName',
    'phoneNumbers',
    'type',
  };
}


class UserAddressSchemaTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserAddressSchemaTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const home = UserAddressSchemaTypeEnum._(r'home');
  static const office = UserAddressSchemaTypeEnum._(r'office');
  static const other = UserAddressSchemaTypeEnum._(r'other');

  /// List of all possible values in this [enum][UserAddressSchemaTypeEnum].
  static const values = <UserAddressSchemaTypeEnum>[
    home,
    office,
    other,
  ];

  static UserAddressSchemaTypeEnum? fromJson(dynamic value) => UserAddressSchemaTypeEnumTypeTransformer().decode(value);

  static List<UserAddressSchemaTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAddressSchemaTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAddressSchemaTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserAddressSchemaTypeEnum] to String,
/// and [decode] dynamic data back to [UserAddressSchemaTypeEnum].
class UserAddressSchemaTypeEnumTypeTransformer {
  factory UserAddressSchemaTypeEnumTypeTransformer() => _instance ??= const UserAddressSchemaTypeEnumTypeTransformer._();

  const UserAddressSchemaTypeEnumTypeTransformer._();

  String encode(UserAddressSchemaTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserAddressSchemaTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserAddressSchemaTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'home': return UserAddressSchemaTypeEnum.home;
        case r'office': return UserAddressSchemaTypeEnum.office;
        case r'other': return UserAddressSchemaTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserAddressSchemaTypeEnumTypeTransformer] instance.
  static UserAddressSchemaTypeEnumTypeTransformer? _instance;
}


