//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class Attribute {
  /// Returns a new [Attribute] instance.
  Attribute({
    required this.label,
    required this.name,
    this.unit,
    required this.description,
    required this.status,
  });

  /// Attribute label, unique
  String label;

  /// Attribute name, can be translated
  String name;

  /// Attribute unit
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  String description;

  /// Attribute status
  AttributeStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Attribute &&
    other.label == label &&
    other.name == name &&
    other.unit == unit &&
    other.description == description &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (label.hashCode) +
    (name.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (description.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'Attribute[label=$label, name=$name, unit=$unit, description=$description, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'label'] = this.label;
      json[r'name'] = this.name;
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
      json[r'description'] = this.description;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [Attribute] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Attribute? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Attribute[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Attribute[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Attribute(
        label: mapValueOfType<String>(json, r'label')!,
        name: mapValueOfType<String>(json, r'name')!,
        unit: mapValueOfType<String>(json, r'unit'),
        description: mapValueOfType<String>(json, r'description')!,
        status: AttributeStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<Attribute> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Attribute>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Attribute.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Attribute> mapFromJson(dynamic json) {
    final map = <String, Attribute>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Attribute.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Attribute-objects as value to a dart map
  static Map<String, List<Attribute>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Attribute>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Attribute.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'name',
    'description',
    'status',
  };
}

/// Attribute status
class AttributeStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AttributeStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const available = AttributeStatusEnum._(r'available');
  static const deleted = AttributeStatusEnum._(r'deleted');

  /// List of all possible values in this [enum][AttributeStatusEnum].
  static const values = <AttributeStatusEnum>[
    available,
    deleted,
  ];

  static AttributeStatusEnum? fromJson(dynamic value) => AttributeStatusEnumTypeTransformer().decode(value);

  static List<AttributeStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttributeStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttributeStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AttributeStatusEnum] to String,
/// and [decode] dynamic data back to [AttributeStatusEnum].
class AttributeStatusEnumTypeTransformer {
  factory AttributeStatusEnumTypeTransformer() => _instance ??= const AttributeStatusEnumTypeTransformer._();

  const AttributeStatusEnumTypeTransformer._();

  String encode(AttributeStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AttributeStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AttributeStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'available': return AttributeStatusEnum.available;
        case r'deleted': return AttributeStatusEnum.deleted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AttributeStatusEnumTypeTransformer] instance.
  static AttributeStatusEnumTypeTransformer? _instance;
}


