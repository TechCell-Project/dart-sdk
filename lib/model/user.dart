//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class User {
  /// Returns a new [User] instance.
  User({
    required this.email,
    required this.emailVerified,
    required this.provider,
    this.socialId,
    required this.firstName,
    required this.lastName,
    required this.role,
    this.avatar,
    this.address = const [],
    this.block,
  });

  String email;

  bool emailVerified;

  UserProviderEnum provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? socialId;

  String firstName;

  String lastName;

  UserRoleEnum role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AvatarSchema? avatar;

  List<UserAddressSchema> address;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserBlockSchema? block;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
    other.email == email &&
    other.emailVerified == emailVerified &&
    other.provider == provider &&
    other.socialId == socialId &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.role == role &&
    other.avatar == avatar &&
    _deepEquality.equals(other.address, address) &&
    other.block == block;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (emailVerified.hashCode) +
    (provider.hashCode) +
    (socialId == null ? 0 : socialId!.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (role.hashCode) +
    (avatar == null ? 0 : avatar!.hashCode) +
    (address.hashCode) +
    (block == null ? 0 : block!.hashCode);

  @override
  String toString() => 'User[email=$email, emailVerified=$emailVerified, provider=$provider, socialId=$socialId, firstName=$firstName, lastName=$lastName, role=$role, avatar=$avatar, address=$address, block=$block]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'emailVerified'] = this.emailVerified;
      json[r'provider'] = this.provider;
    if (this.socialId != null) {
      json[r'socialId'] = this.socialId;
    } else {
      json[r'socialId'] = null;
    }
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
      json[r'role'] = this.role;
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
      json[r'address'] = this.address;
    if (this.block != null) {
      json[r'block'] = this.block;
    } else {
      json[r'block'] = null;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "User[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "User[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return User(
        email: mapValueOfType<String>(json, r'email')!,
        emailVerified: mapValueOfType<bool>(json, r'emailVerified')!,
        provider: UserProviderEnum.fromJson(json[r'provider'])!,
        socialId: mapValueOfType<String>(json, r'socialId'),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        role: UserRoleEnum.fromJson(json[r'role'])!,
        avatar: AvatarSchema.fromJson(json[r'avatar']),
        address: UserAddressSchema.listFromJson(json[r'address']),
        block: UserBlockSchema.fromJson(json[r'block']),
      );
    }
    return null;
  }

  static List<User> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <User>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = User.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = User.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = User.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'emailVerified',
    'provider',
    'firstName',
    'lastName',
    'role',
  };
}


class UserProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const UserProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const google = UserProviderEnum._(r'google');
  static const facebook = UserProviderEnum._(r'facebook');
  static const apple = UserProviderEnum._(r'apple');
  static const email = UserProviderEnum._(r'email');

  /// List of all possible values in this [enum][UserProviderEnum].
  static const values = <UserProviderEnum>[
    google,
    facebook,
    apple,
    email,
  ];

  static UserProviderEnum? fromJson(dynamic value) => UserProviderEnumTypeTransformer().decode(value);

  static List<UserProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserProviderEnum] to String,
/// and [decode] dynamic data back to [UserProviderEnum].
class UserProviderEnumTypeTransformer {
  factory UserProviderEnumTypeTransformer() => _instance ??= const UserProviderEnumTypeTransformer._();

  const UserProviderEnumTypeTransformer._();

  String encode(UserProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'google': return UserProviderEnum.google;
        case r'facebook': return UserProviderEnum.facebook;
        case r'apple': return UserProviderEnum.apple;
        case r'email': return UserProviderEnum.email;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserProviderEnumTypeTransformer] instance.
  static UserProviderEnumTypeTransformer? _instance;
}



class UserRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const UserRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const manager = UserRoleEnum._(r'manager');
  static const customer = UserRoleEnum._(r'customer');
  static const sales = UserRoleEnum._(r'sales');
  static const warehouse = UserRoleEnum._(r'warehouse');
  static const dataEntry = UserRoleEnum._(r'data_entry');
  static const accountant = UserRoleEnum._(r'accountant');

  /// List of all possible values in this [enum][UserRoleEnum].
  static const values = <UserRoleEnum>[
    manager,
    customer,
    sales,
    warehouse,
    dataEntry,
    accountant,
  ];

  static UserRoleEnum? fromJson(dynamic value) => UserRoleEnumTypeTransformer().decode(value);

  static List<UserRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserRoleEnum] to String,
/// and [decode] dynamic data back to [UserRoleEnum].
class UserRoleEnumTypeTransformer {
  factory UserRoleEnumTypeTransformer() => _instance ??= const UserRoleEnumTypeTransformer._();

  const UserRoleEnumTypeTransformer._();

  String encode(UserRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'manager': return UserRoleEnum.manager;
        case r'customer': return UserRoleEnum.customer;
        case r'sales': return UserRoleEnum.sales;
        case r'warehouse': return UserRoleEnum.warehouse;
        case r'data_entry': return UserRoleEnum.dataEntry;
        case r'accountant': return UserRoleEnum.accountant;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserRoleEnumTypeTransformer] instance.
  static UserRoleEnumTypeTransformer? _instance;
}


