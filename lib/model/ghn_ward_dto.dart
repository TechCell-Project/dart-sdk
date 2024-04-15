//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of techcell.dart_sdk;

class GhnWardDTO {
  /// Returns a new [GhnWardDTO] instance.
  GhnWardDTO({
    required this.districtId,
    required this.wardCode,
    required this.wardName,
    this.nameExtension = const [],
    required this.supportType,
    required this.canUpdateCod,
    required this.status,
  });

  /// Mã quận huyện
  num districtId;

  /// Mã phường xã
  String wardCode;

  /// Tên phường xã
  String wardName;

  /// Tên phường xã mở rộng
  List<String> nameExtension;

  /// Loại hỗ trợ
  GhnWardDTOSupportTypeEnum supportType;

  /// Có thể cập nhật COD
  bool canUpdateCod;

  /// Trạng thái
  GhnWardDTOStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GhnWardDTO &&
    other.districtId == districtId &&
    other.wardCode == wardCode &&
    other.wardName == wardName &&
    _deepEquality.equals(other.nameExtension, nameExtension) &&
    other.supportType == supportType &&
    other.canUpdateCod == canUpdateCod &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (districtId.hashCode) +
    (wardCode.hashCode) +
    (wardName.hashCode) +
    (nameExtension.hashCode) +
    (supportType.hashCode) +
    (canUpdateCod.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'GhnWardDTO[districtId=$districtId, wardCode=$wardCode, wardName=$wardName, nameExtension=$nameExtension, supportType=$supportType, canUpdateCod=$canUpdateCod, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'districtId'] = this.districtId;
      json[r'wardCode'] = this.wardCode;
      json[r'wardName'] = this.wardName;
      json[r'nameExtension'] = this.nameExtension;
      json[r'supportType'] = this.supportType;
      json[r'canUpdateCod'] = this.canUpdateCod;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [GhnWardDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GhnWardDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GhnWardDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GhnWardDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GhnWardDTO(
        districtId: num.parse('${json[r'districtId']}'),
        wardCode: mapValueOfType<String>(json, r'wardCode')!,
        wardName: mapValueOfType<String>(json, r'wardName')!,
        nameExtension: json[r'nameExtension'] is Iterable
            ? (json[r'nameExtension'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        supportType: GhnWardDTOSupportTypeEnum.parse('${json[r'supportType']}'),
        canUpdateCod: mapValueOfType<bool>(json, r'canUpdateCod')!,
        status: GhnWardDTOStatusEnum.parse('${json[r'status']}'),
      );
    }
    return null;
  }

  static List<GhnWardDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnWardDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnWardDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GhnWardDTO> mapFromJson(dynamic json) {
    final map = <String, GhnWardDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GhnWardDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GhnWardDTO-objects as value to a dart map
  static Map<String, List<GhnWardDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GhnWardDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GhnWardDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'districtId',
    'wardCode',
    'wardName',
    'nameExtension',
    'supportType',
    'canUpdateCod',
    'status',
  };
}

/// Loại hỗ trợ
class GhnWardDTOSupportTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GhnWardDTOSupportTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const n0 = GhnWardDTOSupportTypeEnum._('0');
  static const n1 = GhnWardDTOSupportTypeEnum._('1');
  static const n2 = GhnWardDTOSupportTypeEnum._('2');
  static const n3 = GhnWardDTOSupportTypeEnum._('3');

  /// List of all possible values in this [enum][GhnWardDTOSupportTypeEnum].
  static const values = <GhnWardDTOSupportTypeEnum>[
    n0,
    n1,
    n2,
    n3,
  ];

  static GhnWardDTOSupportTypeEnum? fromJson(dynamic value) => GhnWardDTOSupportTypeEnumTypeTransformer().decode(value);

  static List<GhnWardDTOSupportTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnWardDTOSupportTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnWardDTOSupportTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GhnWardDTOSupportTypeEnum] to num,
/// and [decode] dynamic data back to [GhnWardDTOSupportTypeEnum].
class GhnWardDTOSupportTypeEnumTypeTransformer {
  factory GhnWardDTOSupportTypeEnumTypeTransformer() => _instance ??= const GhnWardDTOSupportTypeEnumTypeTransformer._();

  const GhnWardDTOSupportTypeEnumTypeTransformer._();

  num encode(GhnWardDTOSupportTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GhnWardDTOSupportTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GhnWardDTOSupportTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case '0': return GhnWardDTOSupportTypeEnum.n0;
        case '1': return GhnWardDTOSupportTypeEnum.n1;
        case '2': return GhnWardDTOSupportTypeEnum.n2;
        case '3': return GhnWardDTOSupportTypeEnum.n3;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GhnWardDTOSupportTypeEnumTypeTransformer] instance.
  static GhnWardDTOSupportTypeEnumTypeTransformer? _instance;
}


/// Trạng thái
class GhnWardDTOStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const GhnWardDTOStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final num value;

  @override
  String toString() => value.toString();

  num toJson() => value;

  static const n1 = GhnWardDTOStatusEnum._('1');
  static const n2 = GhnWardDTOStatusEnum._('2');

  /// List of all possible values in this [enum][GhnWardDTOStatusEnum].
  static const values = <GhnWardDTOStatusEnum>[
    n1,
    n2,
  ];

  static GhnWardDTOStatusEnum? fromJson(dynamic value) => GhnWardDTOStatusEnumTypeTransformer().decode(value);

  static List<GhnWardDTOStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GhnWardDTOStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GhnWardDTOStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GhnWardDTOStatusEnum] to num,
/// and [decode] dynamic data back to [GhnWardDTOStatusEnum].
class GhnWardDTOStatusEnumTypeTransformer {
  factory GhnWardDTOStatusEnumTypeTransformer() => _instance ??= const GhnWardDTOStatusEnumTypeTransformer._();

  const GhnWardDTOStatusEnumTypeTransformer._();

  num encode(GhnWardDTOStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GhnWardDTOStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GhnWardDTOStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case '1': return GhnWardDTOStatusEnum.n1;
        case '2': return GhnWardDTOStatusEnum.n2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GhnWardDTOStatusEnumTypeTransformer] instance.
  static GhnWardDTOStatusEnumTypeTransformer? _instance;
}


