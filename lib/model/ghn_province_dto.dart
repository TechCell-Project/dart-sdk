//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class GhnProvinceDTO {
  /// Returns a new [GhnProvinceDTO] instance.
  GhnProvinceDTO({
    required this.provinceId,
    required this.provinceName,
    required this.countryId,
    this.nameExtension = const [],
    required this.status,
  });

  /// Mã tỉnh thành
  num provinceId;

  /// Tên tỉnh thành
  String provinceName;

  /// Mã quốc gia
  num countryId;

  /// Tên tỉnh thành mở rộng
  List<String> nameExtension;

  /// Trạng thái
  GhnProvinceDTOStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GhnProvinceDTO &&
    other.provinceId == provinceId &&
    other.provinceName == provinceName &&
    other.countryId == countryId &&
    _deepEquality.equals(other.nameExtension, nameExtension) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provinceId.hashCode) +
    (provinceName.hashCode) +
    (countryId.hashCode) +
    (nameExtension.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'GhnProvinceDTO[provinceId=$provinceId, provinceName=$provinceName, countryId=$countryId, nameExtension=$nameExtension, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provinceId'] = this.provinceId;
      json[r'provinceName'] = this.provinceName;
      json[r'countryId'] = this.countryId;
      json[r'nameExtension'] = this.nameExtension;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [GhnProvinceDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GhnProvinceDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GhnProvinceDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GhnProvinceDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GhnProvinceDTO(
        provinceId: num.parse('${json[r'provinceId']}'),
        provinceName: mapValueOfType<String>(json, r'provinceName')!,
        countryId: num.parse('${json[r'countryId']}'),
        nameExtension: json[r'nameExtension'] is Iterable
            ? (json[r'nameExtension'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        status: GhnProvinceDTOStatusEnum.parse('${json[r'status']}'),
      );
    }
    return null;
  }

  static List<GhnProvinceDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnProvinceDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnProvinceDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GhnProvinceDTO> mapFromJson(dynamic json) {
    final map = <String, GhnProvinceDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GhnProvinceDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GhnProvinceDTO-objects as value to a dart map
  static Map<String, List<GhnProvinceDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GhnProvinceDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GhnProvinceDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provinceId',
    'provinceName',
    'countryId',
    'nameExtension',
    'status',
  };
}

/// Trạng thái
class GhnProvinceDTOStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GhnProvinceDTOStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const n1 = GhnProvinceDTOStatusEnum._('1');
  static const n2 = GhnProvinceDTOStatusEnum._('2');

  /// List of all possible values in this [enum][GhnProvinceDTOStatusEnum].
  static const values = <GhnProvinceDTOStatusEnum>[
    n1,
    n2,
  ];

  static GhnProvinceDTOStatusEnum? fromJson(dynamic value) => GhnProvinceDTOStatusEnumTypeTransformer().decode(value);

  static List<GhnProvinceDTOStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnProvinceDTOStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnProvinceDTOStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GhnProvinceDTOStatusEnum] to num,
/// and [decode] dynamic data back to [GhnProvinceDTOStatusEnum].
class GhnProvinceDTOStatusEnumTypeTransformer {
  factory GhnProvinceDTOStatusEnumTypeTransformer() => _instance ??= const GhnProvinceDTOStatusEnumTypeTransformer._();

  const GhnProvinceDTOStatusEnumTypeTransformer._();

  num encode(GhnProvinceDTOStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GhnProvinceDTOStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GhnProvinceDTOStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case '1': return GhnProvinceDTOStatusEnum.n1;
        case '2': return GhnProvinceDTOStatusEnum.n2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GhnProvinceDTOStatusEnumTypeTransformer] instance.
  static GhnProvinceDTOStatusEnumTypeTransformer? _instance;
}


