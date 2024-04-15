//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class GhnDistrictDTO {
  /// Returns a new [GhnDistrictDTO] instance.
  GhnDistrictDTO({
    required this.provinceId,
    required this.districtId,
    required this.districtName,
    required this.supportType,
    this.nameExtension = const [],
    required this.canUpdateCod,
    required this.status,
  });

  /// Mã tỉnh thành
  num provinceId;

  /// Mã quận huyện
  num districtId;

  /// Tên quận huyện
  String districtName;

  /// Loại hỗ trợ
  GhnDistrictDTOSupportTypeEnum supportType;

  /// Tên quận huyện mở rộng
  List<String> nameExtension;

  /// Có thể cập nhật COD
  bool canUpdateCod;

  /// Trạng thái
  GhnDistrictDTOStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GhnDistrictDTO &&
    other.provinceId == provinceId &&
    other.districtId == districtId &&
    other.districtName == districtName &&
    other.supportType == supportType &&
    _deepEquality.equals(other.nameExtension, nameExtension) &&
    other.canUpdateCod == canUpdateCod &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provinceId.hashCode) +
    (districtId.hashCode) +
    (districtName.hashCode) +
    (supportType.hashCode) +
    (nameExtension.hashCode) +
    (canUpdateCod.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'GhnDistrictDTO[provinceId=$provinceId, districtId=$districtId, districtName=$districtName, supportType=$supportType, nameExtension=$nameExtension, canUpdateCod=$canUpdateCod, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provinceId'] = this.provinceId;
      json[r'districtId'] = this.districtId;
      json[r'districtName'] = this.districtName;
      json[r'supportType'] = this.supportType;
      json[r'nameExtension'] = this.nameExtension;
      json[r'canUpdateCod'] = this.canUpdateCod;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [GhnDistrictDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GhnDistrictDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GhnDistrictDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GhnDistrictDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GhnDistrictDTO(
        provinceId: num.parse('${json[r'provinceId']}'),
        districtId: num.parse('${json[r'districtId']}'),
        districtName: mapValueOfType<String>(json, r'districtName')!,
        supportType: GhnDistrictDTOSupportTypeEnum.parse('${json[r'supportType']}'),
        nameExtension: json[r'nameExtension'] is Iterable
            ? (json[r'nameExtension'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        canUpdateCod: mapValueOfType<bool>(json, r'canUpdateCod')!,
        status: GhnDistrictDTOStatusEnum.parse('${json[r'status']}'),
      );
    }
    return null;
  }

  static List<GhnDistrictDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnDistrictDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnDistrictDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GhnDistrictDTO> mapFromJson(dynamic json) {
    final map = <String, GhnDistrictDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GhnDistrictDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GhnDistrictDTO-objects as value to a dart map
  static Map<String, List<GhnDistrictDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GhnDistrictDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GhnDistrictDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provinceId',
    'districtId',
    'districtName',
    'supportType',
    'nameExtension',
    'canUpdateCod',
    'status',
  };
}

/// Loại hỗ trợ
class GhnDistrictDTOSupportTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GhnDistrictDTOSupportTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const n0 = GhnDistrictDTOSupportTypeEnum._('0');
  static const n1 = GhnDistrictDTOSupportTypeEnum._('1');
  static const n2 = GhnDistrictDTOSupportTypeEnum._('2');
  static const n3 = GhnDistrictDTOSupportTypeEnum._('3');

  /// List of all possible values in this [enum][GhnDistrictDTOSupportTypeEnum].
  static const values = <GhnDistrictDTOSupportTypeEnum>[
    n0,
    n1,
    n2,
    n3,
  ];

  static GhnDistrictDTOSupportTypeEnum? fromJson(dynamic value) => GhnDistrictDTOSupportTypeEnumTypeTransformer().decode(value);

  static List<GhnDistrictDTOSupportTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnDistrictDTOSupportTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnDistrictDTOSupportTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GhnDistrictDTOSupportTypeEnum] to num,
/// and [decode] dynamic data back to [GhnDistrictDTOSupportTypeEnum].
class GhnDistrictDTOSupportTypeEnumTypeTransformer {
  factory GhnDistrictDTOSupportTypeEnumTypeTransformer() => _instance ??= const GhnDistrictDTOSupportTypeEnumTypeTransformer._();

  const GhnDistrictDTOSupportTypeEnumTypeTransformer._();

  num encode(GhnDistrictDTOSupportTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GhnDistrictDTOSupportTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GhnDistrictDTOSupportTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case '0': return GhnDistrictDTOSupportTypeEnum.n0;
        case '1': return GhnDistrictDTOSupportTypeEnum.n1;
        case '2': return GhnDistrictDTOSupportTypeEnum.n2;
        case '3': return GhnDistrictDTOSupportTypeEnum.n3;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GhnDistrictDTOSupportTypeEnumTypeTransformer] instance.
  static GhnDistrictDTOSupportTypeEnumTypeTransformer? _instance;
}


/// Trạng thái
class GhnDistrictDTOStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GhnDistrictDTOStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const n1 = GhnDistrictDTOStatusEnum._('1');
  static const n2 = GhnDistrictDTOStatusEnum._('2');

  /// List of all possible values in this [enum][GhnDistrictDTOStatusEnum].
  static const values = <GhnDistrictDTOStatusEnum>[
    n1,
    n2,
  ];

  static GhnDistrictDTOStatusEnum? fromJson(dynamic value) => GhnDistrictDTOStatusEnumTypeTransformer().decode(value);

  static List<GhnDistrictDTOStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnDistrictDTOStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnDistrictDTOStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GhnDistrictDTOStatusEnum] to num,
/// and [decode] dynamic data back to [GhnDistrictDTOStatusEnum].
class GhnDistrictDTOStatusEnumTypeTransformer {
  factory GhnDistrictDTOStatusEnumTypeTransformer() => _instance ??= const GhnDistrictDTOStatusEnumTypeTransformer._();

  const GhnDistrictDTOStatusEnumTypeTransformer._();

  num encode(GhnDistrictDTOStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GhnDistrictDTOStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GhnDistrictDTOStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case '1': return GhnDistrictDTOStatusEnum.n1;
        case '2': return GhnDistrictDTOStatusEnum.n2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GhnDistrictDTOStatusEnumTypeTransformer] instance.
  static GhnDistrictDTOStatusEnumTypeTransformer? _instance;
}


