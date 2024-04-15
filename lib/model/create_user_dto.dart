//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class CreateUserDto {
  /// Returns a new [CreateUserDto] instance.
  CreateUserDto({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.role,
  });

  /// The user's email address.
  String email;

  /// The user's password.
  String password;

  /// The user's first name.
  String firstName;

  /// The user's last name.
  String lastName;

  /// The user's role.
  CreateUserDtoRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserDto &&
    other.email == email &&
    other.password == password &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (password.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'CreateUserDto[email=$email, password=$password, firstName=$firstName, lastName=$lastName, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'password'] = this.password;
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [CreateUserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateUserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateUserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateUserDto(
        email: mapValueOfType<String>(json, r'email')!,
        password: mapValueOfType<String>(json, r'password')!,
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        role: CreateUserDtoRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<CreateUserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUserDto> mapFromJson(dynamic json) {
    final map = <String, CreateUserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUserDto-objects as value to a dart map
  static Map<String, List<CreateUserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'password',
    'firstName',
    'lastName',
    'role',
  };
}

/// The user's role.
class CreateUserDtoRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateUserDtoRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sales = CreateUserDtoRoleEnum._(r'sales');
  static const warehouse = CreateUserDtoRoleEnum._(r'warehouse');
  static const dataEntry = CreateUserDtoRoleEnum._(r'data_entry');
  static const accountant = CreateUserDtoRoleEnum._(r'accountant');

  /// List of all possible values in this [enum][CreateUserDtoRoleEnum].
  static const values = <CreateUserDtoRoleEnum>[
    sales,
    warehouse,
    dataEntry,
    accountant,
  ];

  static CreateUserDtoRoleEnum? fromJson(dynamic value) => CreateUserDtoRoleEnumTypeTransformer().decode(value);

  static List<CreateUserDtoRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserDtoRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserDtoRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateUserDtoRoleEnum] to String,
/// and [decode] dynamic data back to [CreateUserDtoRoleEnum].
class CreateUserDtoRoleEnumTypeTransformer {
  factory CreateUserDtoRoleEnumTypeTransformer() => _instance ??= const CreateUserDtoRoleEnumTypeTransformer._();

  const CreateUserDtoRoleEnumTypeTransformer._();

  String encode(CreateUserDtoRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateUserDtoRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateUserDtoRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sales': return CreateUserDtoRoleEnum.sales;
        case r'warehouse': return CreateUserDtoRoleEnum.warehouse;
        case r'data_entry': return CreateUserDtoRoleEnum.dataEntry;
        case r'accountant': return CreateUserDtoRoleEnum.accountant;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateUserDtoRoleEnumTypeTransformer] instance.
  static CreateUserDtoRoleEnumTypeTransformer? _instance;
}


