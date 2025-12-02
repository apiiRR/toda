// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HistoryId _$HistoryIdFromJson(Map<String, dynamic> json) {
  return _HistoryId.fromJson(json);
}

/// @nodoc
mixin _$HistoryId {
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_code')
  String? get locationCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'scan_date')
  String? get scanDate => throw _privateConstructorUsedError;

  /// Serializes this HistoryId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryIdCopyWith<HistoryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryIdCopyWith<$Res> {
  factory $HistoryIdCopyWith(HistoryId value, $Res Function(HistoryId) then) =
      _$HistoryIdCopyWithImpl<$Res, HistoryId>;
  @useResult
  $Res call({
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    int? id,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'location_code') String? locationCode,
    @JsonKey(name: 'scan_date') String? scanDate,
  });
}

/// @nodoc
class _$HistoryIdCopyWithImpl<$Res, $Val extends HistoryId>
    implements $HistoryIdCopyWith<$Res> {
  _$HistoryIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = freezed,
    Object? userId = freezed,
    Object? id = freezed,
    Object? assetLocationId = freezed,
    Object? locationCode = freezed,
    Object? scanDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            locationName: freezed == locationName
                ? _value.locationName
                : locationName // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            assetLocationId: freezed == assetLocationId
                ? _value.assetLocationId
                : assetLocationId // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            locationCode: freezed == locationCode
                ? _value.locationCode
                : locationCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            scanDate: freezed == scanDate
                ? _value.scanDate
                : scanDate // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HistoryIdImplCopyWith<$Res>
    implements $HistoryIdCopyWith<$Res> {
  factory _$$HistoryIdImplCopyWith(
    _$HistoryIdImpl value,
    $Res Function(_$HistoryIdImpl) then,
  ) = __$$HistoryIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    int? id,
    @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
    @JsonKey(name: 'location_code') String? locationCode,
    @JsonKey(name: 'scan_date') String? scanDate,
  });
}

/// @nodoc
class __$$HistoryIdImplCopyWithImpl<$Res>
    extends _$HistoryIdCopyWithImpl<$Res, _$HistoryIdImpl>
    implements _$$HistoryIdImplCopyWith<$Res> {
  __$$HistoryIdImplCopyWithImpl(
    _$HistoryIdImpl _value,
    $Res Function(_$HistoryIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HistoryId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationName = freezed,
    Object? userId = freezed,
    Object? id = freezed,
    Object? assetLocationId = freezed,
    Object? locationCode = freezed,
    Object? scanDate = freezed,
  }) {
    return _then(
      _$HistoryIdImpl(
        locationName: freezed == locationName
            ? _value.locationName
            : locationName // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value._userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        assetLocationId: freezed == assetLocationId
            ? _value._assetLocationId
            : assetLocationId // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        locationCode: freezed == locationCode
            ? _value.locationCode
            : locationCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        scanDate: freezed == scanDate
            ? _value.scanDate
            : scanDate // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryIdImpl implements _HistoryId {
  _$HistoryIdImpl({
    @JsonKey(name: 'location_name') this.locationName,
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    this.id,
    @JsonKey(name: 'asset_location_id') final List<dynamic>? assetLocationId,
    @JsonKey(name: 'location_code') this.locationCode,
    @JsonKey(name: 'scan_date') this.scanDate,
  }) : _userId = userId,
       _assetLocationId = assetLocationId;

  factory _$HistoryIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryIdImplFromJson(json);

  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  final List<dynamic>? _userId;
  @override
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId {
    final value = _userId;
    if (value == null) return null;
    if (_userId is EqualUnmodifiableListView) return _userId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? id;
  final List<dynamic>? _assetLocationId;
  @override
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId {
    final value = _assetLocationId;
    if (value == null) return null;
    if (_assetLocationId is EqualUnmodifiableListView) return _assetLocationId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'location_code')
  final String? locationCode;
  @override
  @JsonKey(name: 'scan_date')
  final String? scanDate;

  @override
  String toString() {
    return 'HistoryId(locationName: $locationName, userId: $userId, id: $id, assetLocationId: $assetLocationId, locationCode: $locationCode, scanDate: $scanDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryIdImpl &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            const DeepCollectionEquality().equals(other._userId, _userId) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(
              other._assetLocationId,
              _assetLocationId,
            ) &&
            (identical(other.locationCode, locationCode) ||
                other.locationCode == locationCode) &&
            (identical(other.scanDate, scanDate) ||
                other.scanDate == scanDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    locationName,
    const DeepCollectionEquality().hash(_userId),
    id,
    const DeepCollectionEquality().hash(_assetLocationId),
    locationCode,
    scanDate,
  );

  /// Create a copy of HistoryId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryIdImplCopyWith<_$HistoryIdImpl> get copyWith =>
      __$$HistoryIdImplCopyWithImpl<_$HistoryIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryIdImplToJson(this);
  }
}

abstract class _HistoryId implements HistoryId {
  factory _HistoryId({
    @JsonKey(name: 'location_name') final String? locationName,
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    final int? id,
    @JsonKey(name: 'asset_location_id') final List<dynamic>? assetLocationId,
    @JsonKey(name: 'location_code') final String? locationCode,
    @JsonKey(name: 'scan_date') final String? scanDate,
  }) = _$HistoryIdImpl;

  factory _HistoryId.fromJson(Map<String, dynamic> json) =
      _$HistoryIdImpl.fromJson;

  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId;
  @override
  int? get id;
  @override
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId;
  @override
  @JsonKey(name: 'location_code')
  String? get locationCode;
  @override
  @JsonKey(name: 'scan_date')
  String? get scanDate;

  /// Create a copy of HistoryId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryIdImplCopyWith<_$HistoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
