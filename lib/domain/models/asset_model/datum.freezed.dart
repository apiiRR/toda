// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_code')
  String? get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_id')
  List<dynamic>? get jobId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'history_ids')
  List<HistoryId>? get historyIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_history_ids')
  List<UserHistoryId>? get userHistoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes_history_ids')
  List<NotesHistoryId>? get notesHistoryIds =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_code') String? productCode,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
      @JsonKey(name: 'job_id') List<dynamic>? jobId,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'history_ids') List<HistoryId>? historyIds,
      @JsonKey(name: 'user_history_ids') List<UserHistoryId>? userHistoryIds,
      @JsonKey(name: 'notes_history_ids')
      List<NotesHistoryId>? notesHistoryIds});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productCode = freezed,
    Object? productName = freezed,
    Object? assetLocationId = freezed,
    Object? jobId = freezed,
    Object? locationName = freezed,
    Object? userName = freezed,
    Object? notes = freezed,
    Object? imageUrl = freezed,
    Object? historyIds = freezed,
    Object? userHistoryIds = freezed,
    Object? notesHistoryIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      assetLocationId: freezed == assetLocationId
          ? _value.assetLocationId
          : assetLocationId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      historyIds: freezed == historyIds
          ? _value.historyIds
          : historyIds // ignore: cast_nullable_to_non_nullable
              as List<HistoryId>?,
      userHistoryIds: freezed == userHistoryIds
          ? _value.userHistoryIds
          : userHistoryIds // ignore: cast_nullable_to_non_nullable
              as List<UserHistoryId>?,
      notesHistoryIds: freezed == notesHistoryIds
          ? _value.notesHistoryIds
          : notesHistoryIds // ignore: cast_nullable_to_non_nullable
              as List<NotesHistoryId>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_code') String? productCode,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'asset_location_id') List<dynamic>? assetLocationId,
      @JsonKey(name: 'job_id') List<dynamic>? jobId,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'history_ids') List<HistoryId>? historyIds,
      @JsonKey(name: 'user_history_ids') List<UserHistoryId>? userHistoryIds,
      @JsonKey(name: 'notes_history_ids')
      List<NotesHistoryId>? notesHistoryIds});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productCode = freezed,
    Object? productName = freezed,
    Object? assetLocationId = freezed,
    Object? jobId = freezed,
    Object? locationName = freezed,
    Object? userName = freezed,
    Object? notes = freezed,
    Object? imageUrl = freezed,
    Object? historyIds = freezed,
    Object? userHistoryIds = freezed,
    Object? notesHistoryIds = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productCode: freezed == productCode
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      assetLocationId: freezed == assetLocationId
          ? _value._assetLocationId
          : assetLocationId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      jobId: freezed == jobId
          ? _value._jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      historyIds: freezed == historyIds
          ? _value._historyIds
          : historyIds // ignore: cast_nullable_to_non_nullable
              as List<HistoryId>?,
      userHistoryIds: freezed == userHistoryIds
          ? _value._userHistoryIds
          : userHistoryIds // ignore: cast_nullable_to_non_nullable
              as List<UserHistoryId>?,
      notesHistoryIds: freezed == notesHistoryIds
          ? _value._notesHistoryIds
          : notesHistoryIds // ignore: cast_nullable_to_non_nullable
              as List<NotesHistoryId>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  _$DatumImpl(
      {this.id,
      @JsonKey(name: 'product_code') this.productCode,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'asset_location_id') final List<dynamic>? assetLocationId,
      @JsonKey(name: 'job_id') final List<dynamic>? jobId,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'history_ids') final List<HistoryId>? historyIds,
      @JsonKey(name: 'user_history_ids')
      final List<UserHistoryId>? userHistoryIds,
      @JsonKey(name: 'notes_history_ids')
      final List<NotesHistoryId>? notesHistoryIds})
      : _assetLocationId = assetLocationId,
        _jobId = jobId,
        _historyIds = historyIds,
        _userHistoryIds = userHistoryIds,
        _notesHistoryIds = notesHistoryIds;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_code')
  final String? productCode;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
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

  final List<dynamic>? _jobId;
  @override
  @JsonKey(name: 'job_id')
  List<dynamic>? get jobId {
    final value = _jobId;
    if (value == null) return null;
    if (_jobId is EqualUnmodifiableListView) return _jobId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final List<HistoryId>? _historyIds;
  @override
  @JsonKey(name: 'history_ids')
  List<HistoryId>? get historyIds {
    final value = _historyIds;
    if (value == null) return null;
    if (_historyIds is EqualUnmodifiableListView) return _historyIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserHistoryId>? _userHistoryIds;
  @override
  @JsonKey(name: 'user_history_ids')
  List<UserHistoryId>? get userHistoryIds {
    final value = _userHistoryIds;
    if (value == null) return null;
    if (_userHistoryIds is EqualUnmodifiableListView) return _userHistoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NotesHistoryId>? _notesHistoryIds;
  @override
  @JsonKey(name: 'notes_history_ids')
  List<NotesHistoryId>? get notesHistoryIds {
    final value = _notesHistoryIds;
    if (value == null) return null;
    if (_notesHistoryIds is EqualUnmodifiableListView) return _notesHistoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(id: $id, productCode: $productCode, productName: $productName, assetLocationId: $assetLocationId, jobId: $jobId, locationName: $locationName, userName: $userName, notes: $notes, imageUrl: $imageUrl, historyIds: $historyIds, userHistoryIds: $userHistoryIds, notesHistoryIds: $notesHistoryIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productCode, productCode) ||
                other.productCode == productCode) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._assetLocationId, _assetLocationId) &&
            const DeepCollectionEquality().equals(other._jobId, _jobId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._historyIds, _historyIds) &&
            const DeepCollectionEquality()
                .equals(other._userHistoryIds, _userHistoryIds) &&
            const DeepCollectionEquality()
                .equals(other._notesHistoryIds, _notesHistoryIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productCode,
      productName,
      const DeepCollectionEquality().hash(_assetLocationId),
      const DeepCollectionEquality().hash(_jobId),
      locationName,
      userName,
      notes,
      imageUrl,
      const DeepCollectionEquality().hash(_historyIds),
      const DeepCollectionEquality().hash(_userHistoryIds),
      const DeepCollectionEquality().hash(_notesHistoryIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  factory _Datum(
      {final int? id,
      @JsonKey(name: 'product_code') final String? productCode,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'asset_location_id') final List<dynamic>? assetLocationId,
      @JsonKey(name: 'job_id') final List<dynamic>? jobId,
      @JsonKey(name: 'location_name') final String? locationName,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'notes') final String? notes,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'history_ids') final List<HistoryId>? historyIds,
      @JsonKey(name: 'user_history_ids')
      final List<UserHistoryId>? userHistoryIds,
      @JsonKey(name: 'notes_history_ids')
      final List<NotesHistoryId>? notesHistoryIds}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_code')
  String? get productCode;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'asset_location_id')
  List<dynamic>? get assetLocationId;
  @override
  @JsonKey(name: 'job_id')
  List<dynamic>? get jobId;
  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'history_ids')
  List<HistoryId>? get historyIds;
  @override
  @JsonKey(name: 'user_history_ids')
  List<UserHistoryId>? get userHistoryIds;
  @override
  @JsonKey(name: 'notes_history_ids')
  List<NotesHistoryId>? get notesHistoryIds;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
