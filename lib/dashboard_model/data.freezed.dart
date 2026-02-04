// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'aset_inactive')
  int? get asetInactive => throw _privateConstructorUsedError;
  @JsonKey(name: 'aset_active')
  int? get asetActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_aset')
  int? get totalAset => throw _privateConstructorUsedError;
  @JsonKey(name: 'aset_baik')
  int? get asetBaik => throw _privateConstructorUsedError;
  @JsonKey(name: 'aset_idle')
  int? get asetIdle => throw _privateConstructorUsedError;
  @JsonKey(name: 'aset_by_category')
  List<AsetByCategory>? get asetByCategory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'aset_rusak')
  int? get asetRusak => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({
    @JsonKey(name: 'aset_inactive') int? asetInactive,
    @JsonKey(name: 'aset_active') int? asetActive,
    @JsonKey(name: 'total_aset') int? totalAset,
    @JsonKey(name: 'aset_baik') int? asetBaik,
    @JsonKey(name: 'aset_idle') int? asetIdle,
    @JsonKey(name: 'aset_by_category') List<AsetByCategory>? asetByCategory,
    @JsonKey(name: 'aset_rusak') int? asetRusak,
  });
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asetInactive = freezed,
    Object? asetActive = freezed,
    Object? totalAset = freezed,
    Object? asetBaik = freezed,
    Object? asetIdle = freezed,
    Object? asetByCategory = freezed,
    Object? asetRusak = freezed,
  }) {
    return _then(
      _value.copyWith(
            asetInactive: freezed == asetInactive
                ? _value.asetInactive
                : asetInactive // ignore: cast_nullable_to_non_nullable
                      as int?,
            asetActive: freezed == asetActive
                ? _value.asetActive
                : asetActive // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalAset: freezed == totalAset
                ? _value.totalAset
                : totalAset // ignore: cast_nullable_to_non_nullable
                      as int?,
            asetBaik: freezed == asetBaik
                ? _value.asetBaik
                : asetBaik // ignore: cast_nullable_to_non_nullable
                      as int?,
            asetIdle: freezed == asetIdle
                ? _value.asetIdle
                : asetIdle // ignore: cast_nullable_to_non_nullable
                      as int?,
            asetByCategory: freezed == asetByCategory
                ? _value.asetByCategory
                : asetByCategory // ignore: cast_nullable_to_non_nullable
                      as List<AsetByCategory>?,
            asetRusak: freezed == asetRusak
                ? _value.asetRusak
                : asetRusak // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
    _$DataImpl value,
    $Res Function(_$DataImpl) then,
  ) = __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'aset_inactive') int? asetInactive,
    @JsonKey(name: 'aset_active') int? asetActive,
    @JsonKey(name: 'total_aset') int? totalAset,
    @JsonKey(name: 'aset_baik') int? asetBaik,
    @JsonKey(name: 'aset_idle') int? asetIdle,
    @JsonKey(name: 'aset_by_category') List<AsetByCategory>? asetByCategory,
    @JsonKey(name: 'aset_rusak') int? asetRusak,
  });
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
    : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asetInactive = freezed,
    Object? asetActive = freezed,
    Object? totalAset = freezed,
    Object? asetBaik = freezed,
    Object? asetIdle = freezed,
    Object? asetByCategory = freezed,
    Object? asetRusak = freezed,
  }) {
    return _then(
      _$DataImpl(
        asetInactive: freezed == asetInactive
            ? _value.asetInactive
            : asetInactive // ignore: cast_nullable_to_non_nullable
                  as int?,
        asetActive: freezed == asetActive
            ? _value.asetActive
            : asetActive // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalAset: freezed == totalAset
            ? _value.totalAset
            : totalAset // ignore: cast_nullable_to_non_nullable
                  as int?,
        asetBaik: freezed == asetBaik
            ? _value.asetBaik
            : asetBaik // ignore: cast_nullable_to_non_nullable
                  as int?,
        asetIdle: freezed == asetIdle
            ? _value.asetIdle
            : asetIdle // ignore: cast_nullable_to_non_nullable
                  as int?,
        asetByCategory: freezed == asetByCategory
            ? _value._asetByCategory
            : asetByCategory // ignore: cast_nullable_to_non_nullable
                  as List<AsetByCategory>?,
        asetRusak: freezed == asetRusak
            ? _value.asetRusak
            : asetRusak // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl({
    @JsonKey(name: 'aset_inactive') this.asetInactive,
    @JsonKey(name: 'aset_active') this.asetActive,
    @JsonKey(name: 'total_aset') this.totalAset,
    @JsonKey(name: 'aset_baik') this.asetBaik,
    @JsonKey(name: 'aset_idle') this.asetIdle,
    @JsonKey(name: 'aset_by_category')
    final List<AsetByCategory>? asetByCategory,
    @JsonKey(name: 'aset_rusak') this.asetRusak,
  }) : _asetByCategory = asetByCategory;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'aset_inactive')
  final int? asetInactive;
  @override
  @JsonKey(name: 'aset_active')
  final int? asetActive;
  @override
  @JsonKey(name: 'total_aset')
  final int? totalAset;
  @override
  @JsonKey(name: 'aset_baik')
  final int? asetBaik;
  @override
  @JsonKey(name: 'aset_idle')
  final int? asetIdle;
  final List<AsetByCategory>? _asetByCategory;
  @override
  @JsonKey(name: 'aset_by_category')
  List<AsetByCategory>? get asetByCategory {
    final value = _asetByCategory;
    if (value == null) return null;
    if (_asetByCategory is EqualUnmodifiableListView) return _asetByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'aset_rusak')
  final int? asetRusak;

  @override
  String toString() {
    return 'Data(asetInactive: $asetInactive, asetActive: $asetActive, totalAset: $totalAset, asetBaik: $asetBaik, asetIdle: $asetIdle, asetByCategory: $asetByCategory, asetRusak: $asetRusak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.asetInactive, asetInactive) ||
                other.asetInactive == asetInactive) &&
            (identical(other.asetActive, asetActive) ||
                other.asetActive == asetActive) &&
            (identical(other.totalAset, totalAset) ||
                other.totalAset == totalAset) &&
            (identical(other.asetBaik, asetBaik) ||
                other.asetBaik == asetBaik) &&
            (identical(other.asetIdle, asetIdle) ||
                other.asetIdle == asetIdle) &&
            const DeepCollectionEquality().equals(
              other._asetByCategory,
              _asetByCategory,
            ) &&
            (identical(other.asetRusak, asetRusak) ||
                other.asetRusak == asetRusak));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    asetInactive,
    asetActive,
    totalAset,
    asetBaik,
    asetIdle,
    const DeepCollectionEquality().hash(_asetByCategory),
    asetRusak,
  );

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(this);
  }
}

abstract class _Data implements Data {
  factory _Data({
    @JsonKey(name: 'aset_inactive') final int? asetInactive,
    @JsonKey(name: 'aset_active') final int? asetActive,
    @JsonKey(name: 'total_aset') final int? totalAset,
    @JsonKey(name: 'aset_baik') final int? asetBaik,
    @JsonKey(name: 'aset_idle') final int? asetIdle,
    @JsonKey(name: 'aset_by_category')
    final List<AsetByCategory>? asetByCategory,
    @JsonKey(name: 'aset_rusak') final int? asetRusak,
  }) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'aset_inactive')
  int? get asetInactive;
  @override
  @JsonKey(name: 'aset_active')
  int? get asetActive;
  @override
  @JsonKey(name: 'total_aset')
  int? get totalAset;
  @override
  @JsonKey(name: 'aset_baik')
  int? get asetBaik;
  @override
  @JsonKey(name: 'aset_idle')
  int? get asetIdle;
  @override
  @JsonKey(name: 'aset_by_category')
  List<AsetByCategory>? get asetByCategory;
  @override
  @JsonKey(name: 'aset_rusak')
  int? get asetRusak;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
