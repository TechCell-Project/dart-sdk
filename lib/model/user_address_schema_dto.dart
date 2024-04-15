//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class UserAddressSchemaDTO {
  /// Returns a new [UserAddressSchemaDTO] instance.
  UserAddressSchemaDTO({
    required this.type,
    required this.customerName,
    required this.phoneNumbers,
    required this.provinceLevel,
    required this.districtLevel,
    required this.wardLevel,
    required this.detail,
    this.isDefault,
  });

  /// The name type of address
  UserAddressSchemaDTOTypeEnum type;

  /// The name of customer
  String customerName;

  /// The phone number of customer
  String phoneNumbers;

  /// The province level address
  ProvinceSchemaDTO provinceLevel;

  /// The district level address
  DistrictSchemaDTO districtLevel;

  /// The ward level address
  WardSchemaDTO wardLevel;

  /// The detailed address
  String detail;

  /// The boolean value to check if this address is default or not
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAddressSchemaDTO &&
    other.type == type &&
    other.customerName == customerName &&
    other.phoneNumbers == phoneNumbers &&
    other.provinceLevel == provinceLevel &&
    other.districtLevel == districtLevel &&
    other.wardLevel == wardLevel &&
    other.detail == detail &&
    other.isDefault == isDefault;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (customerName.hashCode) +
    (phoneNumbers.hashCode) +
    (provinceLevel.hashCode) +
    (districtLevel.hashCode) +
    (wardLevel.hashCode) +
    (detail.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode);

  @override
  String toString() => 'UserAddressSchemaDTO[type=$type, customerName=$customerName, phoneNumbers=$phoneNumbers, provinceLevel=$provinceLevel, districtLevel=$districtLevel, wardLevel=$wardLevel, detail=$detail, isDefault=$isDefault]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'customerName'] = this.customerName;
      json[r'phoneNumbers'] = this.phoneNumbers;
      json[r'provinceLevel'] = this.provinceLevel;
      json[r'districtLevel'] = this.districtLevel;
      json[r'wardLevel'] = this.wardLevel;
      json[r'detail'] = this.detail;
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    return json;
  }

  /// Returns a new [UserAddressSchemaDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAddressSchemaDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserAddressSchemaDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserAddressSchemaDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserAddressSchemaDTO(
        type: UserAddressSchemaDTOTypeEnum.fromJson(json[r'type'])!,
        customerName: mapValueOfType<String>(json, r'customerName')!,
        phoneNumbers: mapValueOfType<String>(json, r'phoneNumbers')!,
        provinceLevel: ProvinceSchemaDTO.fromJson(json[r'provinceLevel'])!,
        districtLevel: DistrictSchemaDTO.fromJson(json[r'districtLevel'])!,
        wardLevel: WardSchemaDTO.fromJson(json[r'wardLevel'])!,
        detail: mapValueOfType<String>(json, r'detail')!,
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
      );
    }
    return null;
  }

  static List<UserAddressSchemaDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAddressSchemaDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAddressSchemaDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAddressSchemaDTO> mapFromJson(dynamic json) {
    final map = <String, UserAddressSchemaDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAddressSchemaDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAddressSchemaDTO-objects as value to a dart map
  static Map<String, List<UserAddressSchemaDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAddressSchemaDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAddressSchemaDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'customerName',
    'phoneNumbers',
    'provinceLevel',
    'districtLevel',
    'wardLevel',
    'detail',
  };
}

/// The name type of address
class UserAddressSchemaDTOTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserAddressSchemaDTOTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const home = UserAddressSchemaDTOTypeEnum._(r'home');
  static const office = UserAddressSchemaDTOTypeEnum._(r'office');
  static const other = UserAddressSchemaDTOTypeEnum._(r'other');

  /// List of all possible values in this [enum][UserAddressSchemaDTOTypeEnum].
  static const values = <UserAddressSchemaDTOTypeEnum>[
    home,
    office,
    other,
  ];

  static UserAddressSchemaDTOTypeEnum? fromJson(dynamic value) => UserAddressSchemaDTOTypeEnumTypeTransformer().decode(value);

  static List<UserAddressSchemaDTOTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAddressSchemaDTOTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAddressSchemaDTOTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserAddressSchemaDTOTypeEnum] to String,
/// and [decode] dynamic data back to [UserAddressSchemaDTOTypeEnum].
class UserAddressSchemaDTOTypeEnumTypeTransformer {
  factory UserAddressSchemaDTOTypeEnumTypeTransformer() => _instance ??= const UserAddressSchemaDTOTypeEnumTypeTransformer._();

  const UserAddressSchemaDTOTypeEnumTypeTransformer._();

  String encode(UserAddressSchemaDTOTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserAddressSchemaDTOTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserAddressSchemaDTOTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'home': return UserAddressSchemaDTOTypeEnum.home;
        case r'office': return UserAddressSchemaDTOTypeEnum.office;
        case r'other': return UserAddressSchemaDTOTypeEnum.other;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserAddressSchemaDTOTypeEnumTypeTransformer] instance.
  static UserAddressSchemaDTOTypeEnumTypeTransformer? _instance;
}


