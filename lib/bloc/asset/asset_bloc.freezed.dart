// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AssetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetEventCopyWith<$Res> {
  factory $AssetEventCopyWith(
    AssetEvent value,
    $Res Function(AssetEvent) then,
  ) = _$AssetEventCopyWithImpl<$Res, AssetEvent>;
}

/// @nodoc
class _$AssetEventCopyWithImpl<$Res, $Val extends AssetEvent>
    implements $AssetEventCopyWith<$Res> {
  _$AssetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AssetEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AssetEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ScanDataHomeImplCopyWith<$Res> {
  factory _$$ScanDataHomeImplCopyWith(
    _$ScanDataHomeImpl value,
    $Res Function(_$ScanDataHomeImpl) then,
  ) = __$$ScanDataHomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ScanDataHomeImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$ScanDataHomeImpl>
    implements _$$ScanDataHomeImplCopyWith<$Res> {
  __$$ScanDataHomeImplCopyWithImpl(
    _$ScanDataHomeImpl _value,
    $Res Function(_$ScanDataHomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$ScanDataHomeImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ScanDataHomeImpl implements _ScanDataHome {
  const _$ScanDataHomeImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AssetEvent.scanDataHome(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDataHomeImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanDataHomeImplCopyWith<_$ScanDataHomeImpl> get copyWith =>
      __$$ScanDataHomeImplCopyWithImpl<_$ScanDataHomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return scanDataHome(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return scanDataHome?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (scanDataHome != null) {
      return scanDataHome(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return scanDataHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return scanDataHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (scanDataHome != null) {
      return scanDataHome(this);
    }
    return orElse();
  }
}

abstract class _ScanDataHome implements AssetEvent {
  const factory _ScanDataHome(final String name) = _$ScanDataHomeImpl;

  String get name;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanDataHomeImplCopyWith<_$ScanDataHomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanDataImplCopyWith<$Res> {
  factory _$$ScanDataImplCopyWith(
    _$ScanDataImpl value,
    $Res Function(_$ScanDataImpl) then,
  ) = __$$ScanDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ScanDataImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$ScanDataImpl>
    implements _$$ScanDataImplCopyWith<$Res> {
  __$$ScanDataImplCopyWithImpl(
    _$ScanDataImpl _value,
    $Res Function(_$ScanDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$ScanDataImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ScanDataImpl implements _ScanData {
  const _$ScanDataImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AssetEvent.scanData(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDataImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanDataImplCopyWith<_$ScanDataImpl> get copyWith =>
      __$$ScanDataImplCopyWithImpl<_$ScanDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return scanData(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return scanData?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (scanData != null) {
      return scanData(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return scanData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return scanData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (scanData != null) {
      return scanData(this);
    }
    return orElse();
  }
}

abstract class _ScanData implements AssetEvent {
  const factory _ScanData(final String name) = _$ScanDataImpl;

  String get name;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanDataImplCopyWith<_$ScanDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
    _$GetDataImpl value,
    $Res Function(_$GetDataImpl) then,
  ) = __$$GetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int start, Map<String, dynamic> data});
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
    _$GetDataImpl _value,
    $Res Function(_$GetDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? start = null, Object? data = null}) {
    return _then(
      _$GetDataImpl(
        null == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as int,
        null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl(this.start, final Map<String, dynamic> data)
    : _data = data;

  @override
  final int start;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'AssetEvent.getData(start: $start, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataImpl &&
            (identical(other.start, start) || other.start == start) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    start,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      __$$GetDataImplCopyWithImpl<_$GetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return getData(start, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return getData?.call(start, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(start, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements AssetEvent {
  const factory _GetData(final int start, final Map<String, dynamic> data) =
      _$GetDataImpl;

  int get start;
  Map<String, dynamic> get data;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataSingleImplCopyWith<$Res> {
  factory _$$GetDataSingleImplCopyWith(
    _$GetDataSingleImpl value,
    $Res Function(_$GetDataSingleImpl) then,
  ) = __$$GetDataSingleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetDataSingleImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$GetDataSingleImpl>
    implements _$$GetDataSingleImplCopyWith<$Res> {
  __$$GetDataSingleImplCopyWithImpl(
    _$GetDataSingleImpl _value,
    $Res Function(_$GetDataSingleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetDataSingleImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetDataSingleImpl implements _GetDataSingle {
  const _$GetDataSingleImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AssetEvent.getDataSingle(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataSingleImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataSingleImplCopyWith<_$GetDataSingleImpl> get copyWith =>
      __$$GetDataSingleImplCopyWithImpl<_$GetDataSingleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return getDataSingle(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return getDataSingle?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (getDataSingle != null) {
      return getDataSingle(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return getDataSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return getDataSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (getDataSingle != null) {
      return getDataSingle(this);
    }
    return orElse();
  }
}

abstract class _GetDataSingle implements AssetEvent {
  const factory _GetDataSingle(final int id) = _$GetDataSingleImpl;

  int get id;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDataSingleImplCopyWith<_$GetDataSingleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDataImplCopyWith<$Res> {
  factory _$$PostDataImplCopyWith(
    _$PostDataImpl value,
    $Res Function(_$PostDataImpl) then,
  ) = __$$PostDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> asset});
}

/// @nodoc
class __$$PostDataImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$PostDataImpl>
    implements _$$PostDataImplCopyWith<$Res> {
  __$$PostDataImplCopyWithImpl(
    _$PostDataImpl _value,
    $Res Function(_$PostDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null}) {
    return _then(
      _$PostDataImpl(
        null == asset
            ? _value._asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$PostDataImpl implements _PostData {
  const _$PostDataImpl(final Map<String, dynamic> asset) : _asset = asset;

  final Map<String, dynamic> _asset;
  @override
  Map<String, dynamic> get asset {
    if (_asset is EqualUnmodifiableMapView) return _asset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_asset);
  }

  @override
  String toString() {
    return 'AssetEvent.postData(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataImpl &&
            const DeepCollectionEquality().equals(other._asset, _asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_asset));

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      __$$PostDataImplCopyWithImpl<_$PostDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return postData(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return postData?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (postData != null) {
      return postData(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return postData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return postData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (postData != null) {
      return postData(this);
    }
    return orElse();
  }
}

abstract class _PostData implements AssetEvent {
  const factory _PostData(final Map<String, dynamic> asset) = _$PostDataImpl;

  Map<String, dynamic> get asset;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDataDuplicateImplCopyWith<$Res> {
  factory _$$PostDataDuplicateImplCopyWith(
    _$PostDataDuplicateImpl value,
    $Res Function(_$PostDataDuplicateImpl) then,
  ) = __$$PostDataDuplicateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> asset});
}

/// @nodoc
class __$$PostDataDuplicateImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$PostDataDuplicateImpl>
    implements _$$PostDataDuplicateImplCopyWith<$Res> {
  __$$PostDataDuplicateImplCopyWithImpl(
    _$PostDataDuplicateImpl _value,
    $Res Function(_$PostDataDuplicateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null}) {
    return _then(
      _$PostDataDuplicateImpl(
        null == asset
            ? _value._asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$PostDataDuplicateImpl implements _PostDataDuplicate {
  const _$PostDataDuplicateImpl(final Map<String, dynamic> asset)
    : _asset = asset;

  final Map<String, dynamic> _asset;
  @override
  Map<String, dynamic> get asset {
    if (_asset is EqualUnmodifiableMapView) return _asset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_asset);
  }

  @override
  String toString() {
    return 'AssetEvent.postDataDuplicate(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataDuplicateImpl &&
            const DeepCollectionEquality().equals(other._asset, _asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_asset));

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDataDuplicateImplCopyWith<_$PostDataDuplicateImpl> get copyWith =>
      __$$PostDataDuplicateImplCopyWithImpl<_$PostDataDuplicateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return postDataDuplicate(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return postDataDuplicate?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (postDataDuplicate != null) {
      return postDataDuplicate(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return postDataDuplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return postDataDuplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (postDataDuplicate != null) {
      return postDataDuplicate(this);
    }
    return orElse();
  }
}

abstract class _PostDataDuplicate implements AssetEvent {
  const factory _PostDataDuplicate(final Map<String, dynamic> asset) =
      _$PostDataDuplicateImpl;

  Map<String, dynamic> get asset;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDataDuplicateImplCopyWith<_$PostDataDuplicateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutDataImplCopyWith<$Res> {
  factory _$$PutDataImplCopyWith(
    _$PutDataImpl value,
    $Res Function(_$PutDataImpl) then,
  ) = __$$PutDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> asset, int id});
}

/// @nodoc
class __$$PutDataImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$PutDataImpl>
    implements _$$PutDataImplCopyWith<$Res> {
  __$$PutDataImplCopyWithImpl(
    _$PutDataImpl _value,
    $Res Function(_$PutDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null, Object? id = null}) {
    return _then(
      _$PutDataImpl(
        null == asset
            ? _value._asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PutDataImpl implements _PutData {
  const _$PutDataImpl(final Map<String, dynamic> asset, this.id)
    : _asset = asset;

  final Map<String, dynamic> _asset;
  @override
  Map<String, dynamic> get asset {
    if (_asset is EqualUnmodifiableMapView) return _asset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_asset);
  }

  @override
  final int id;

  @override
  String toString() {
    return 'AssetEvent.putData(asset: $asset, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutDataImpl &&
            const DeepCollectionEquality().equals(other._asset, _asset) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_asset), id);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PutDataImplCopyWith<_$PutDataImpl> get copyWith =>
      __$$PutDataImplCopyWithImpl<_$PutDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return putData(asset, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return putData?.call(asset, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (putData != null) {
      return putData(asset, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return putData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return putData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (putData != null) {
      return putData(this);
    }
    return orElse();
  }
}

abstract class _PutData implements AssetEvent {
  const factory _PutData(final Map<String, dynamic> asset, final int id) =
      _$PutDataImpl;

  Map<String, dynamic> get asset;
  int get id;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PutDataImplCopyWith<_$PutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDataImplCopyWith<$Res> {
  factory _$$DeleteDataImplCopyWith(
    _$DeleteDataImpl value,
    $Res Function(_$DeleteDataImpl) then,
  ) = __$$DeleteDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteDataImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$DeleteDataImpl>
    implements _$$DeleteDataImplCopyWith<$Res> {
  __$$DeleteDataImplCopyWithImpl(
    _$DeleteDataImpl _value,
    $Res Function(_$DeleteDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteDataImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteDataImpl implements _DeleteData {
  const _$DeleteDataImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AssetEvent.deleteData(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDataImplCopyWith<_$DeleteDataImpl> get copyWith =>
      __$$DeleteDataImplCopyWithImpl<_$DeleteDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return deleteData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return deleteData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(this);
    }
    return orElse();
  }
}

abstract class _DeleteData implements AssetEvent {
  const factory _DeleteData(final int id) = _$DeleteDataImpl;

  int get id;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDataImplCopyWith<_$DeleteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomDataImplCopyWith<$Res> {
  factory _$$CustomDataImplCopyWith(
    _$CustomDataImpl value,
    $Res Function(_$CustomDataImpl) then,
  ) = __$$CustomDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> asset});
}

/// @nodoc
class __$$CustomDataImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$CustomDataImpl>
    implements _$$CustomDataImplCopyWith<$Res> {
  __$$CustomDataImplCopyWithImpl(
    _$CustomDataImpl _value,
    $Res Function(_$CustomDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null}) {
    return _then(
      _$CustomDataImpl(
        null == asset
            ? _value._asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$CustomDataImpl implements _CustomData {
  const _$CustomDataImpl(final Map<String, dynamic> asset) : _asset = asset;

  final Map<String, dynamic> _asset;
  @override
  Map<String, dynamic> get asset {
    if (_asset is EqualUnmodifiableMapView) return _asset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_asset);
  }

  @override
  String toString() {
    return 'AssetEvent.customData(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomDataImpl &&
            const DeepCollectionEquality().equals(other._asset, _asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_asset));

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomDataImplCopyWith<_$CustomDataImpl> get copyWith =>
      __$$CustomDataImplCopyWithImpl<_$CustomDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return customData(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return customData?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (customData != null) {
      return customData(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return customData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return customData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (customData != null) {
      return customData(this);
    }
    return orElse();
  }
}

abstract class _CustomData implements AssetEvent {
  const factory _CustomData(final Map<String, dynamic> asset) =
      _$CustomDataImpl;

  Map<String, dynamic> get asset;

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomDataImplCopyWith<_$CustomDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDashboardImplCopyWith<$Res> {
  factory _$$GetDashboardImplCopyWith(
    _$GetDashboardImpl value,
    $Res Function(_$GetDashboardImpl) then,
  ) = __$$GetDashboardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDashboardImplCopyWithImpl<$Res>
    extends _$AssetEventCopyWithImpl<$Res, _$GetDashboardImpl>
    implements _$$GetDashboardImplCopyWith<$Res> {
  __$$GetDashboardImplCopyWithImpl(
    _$GetDashboardImpl _value,
    $Res Function(_$GetDashboardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDashboardImpl implements _GetDashboard {
  const _$GetDashboardImpl();

  @override
  String toString() {
    return 'AssetEvent.getDashboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDashboardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanDataHome,
    required TResult Function(String name) scanData,
    required TResult Function(int start, Map<String, dynamic> data) getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> asset) postData,
    required TResult Function(Map<String, dynamic> asset) postDataDuplicate,
    required TResult Function(Map<String, dynamic> asset, int id) putData,
    required TResult Function(int id) deleteData,
    required TResult Function(Map<String, dynamic> asset) customData,
    required TResult Function() getDashboard,
  }) {
    return getDashboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanDataHome,
    TResult? Function(String name)? scanData,
    TResult? Function(int start, Map<String, dynamic> data)? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> asset)? postData,
    TResult? Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult? Function(Map<String, dynamic> asset, int id)? putData,
    TResult? Function(int id)? deleteData,
    TResult? Function(Map<String, dynamic> asset)? customData,
    TResult? Function()? getDashboard,
  }) {
    return getDashboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanDataHome,
    TResult Function(String name)? scanData,
    TResult Function(int start, Map<String, dynamic> data)? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> asset)? postData,
    TResult Function(Map<String, dynamic> asset)? postDataDuplicate,
    TResult Function(Map<String, dynamic> asset, int id)? putData,
    TResult Function(int id)? deleteData,
    TResult Function(Map<String, dynamic> asset)? customData,
    TResult Function()? getDashboard,
    required TResult orElse(),
  }) {
    if (getDashboard != null) {
      return getDashboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanDataHome value) scanDataHome,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PostDataDuplicate value) postDataDuplicate,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
    required TResult Function(_CustomData value) customData,
    required TResult Function(_GetDashboard value) getDashboard,
  }) {
    return getDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanDataHome value)? scanDataHome,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
    TResult? Function(_CustomData value)? customData,
    TResult? Function(_GetDashboard value)? getDashboard,
  }) {
    return getDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanDataHome value)? scanDataHome,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PostDataDuplicate value)? postDataDuplicate,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    TResult Function(_CustomData value)? customData,
    TResult Function(_GetDashboard value)? getDashboard,
    required TResult orElse(),
  }) {
    if (getDashboard != null) {
      return getDashboard(this);
    }
    return orElse();
  }
}

abstract class _GetDashboard implements AssetEvent {
  const factory _GetDashboard() = _$GetDashboardImpl;
}

/// @nodoc
mixin _$AssetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetStateCopyWith<$Res> {
  factory $AssetStateCopyWith(
    AssetState value,
    $Res Function(AssetState) then,
  ) = _$AssetStateCopyWithImpl<$Res, AssetState>;
}

/// @nodoc
class _$AssetStateCopyWithImpl<$Res, $Val extends AssetState>
    implements $AssetStateCopyWith<$Res> {
  _$AssetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AssetState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AssetState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AssetState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AssetState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorMessage = null}) {
    return _then(
      _$ErrorImpl(
        null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AssetState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AssetState {
  const factory _Error(final String errorMessage) = _$ErrorImpl;

  String get errorMessage;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AssetState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AssetState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessDuplicateImplCopyWith<$Res> {
  factory _$$SuccessDuplicateImplCopyWith(
    _$SuccessDuplicateImpl value,
    $Res Function(_$SuccessDuplicateImpl) then,
  ) = __$$SuccessDuplicateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetModel asset});

  $AssetModelCopyWith<$Res> get asset;
}

/// @nodoc
class __$$SuccessDuplicateImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$SuccessDuplicateImpl>
    implements _$$SuccessDuplicateImplCopyWith<$Res> {
  __$$SuccessDuplicateImplCopyWithImpl(
    _$SuccessDuplicateImpl _value,
    $Res Function(_$SuccessDuplicateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null}) {
    return _then(
      _$SuccessDuplicateImpl(
        null == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as AssetModel,
      ),
    );
  }

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssetModelCopyWith<$Res> get asset {
    return $AssetModelCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc

class _$SuccessDuplicateImpl implements _SuccessDuplicate {
  const _$SuccessDuplicateImpl(this.asset);

  @override
  final AssetModel asset;

  @override
  String toString() {
    return 'AssetState.successDuplicate(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDuplicateImpl &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessDuplicateImplCopyWith<_$SuccessDuplicateImpl> get copyWith =>
      __$$SuccessDuplicateImplCopyWithImpl<_$SuccessDuplicateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return successDuplicate(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return successDuplicate?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (successDuplicate != null) {
      return successDuplicate(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return successDuplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return successDuplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (successDuplicate != null) {
      return successDuplicate(this);
    }
    return orElse();
  }
}

abstract class _SuccessDuplicate implements AssetState {
  const factory _SuccessDuplicate(final AssetModel asset) =
      _$SuccessDuplicateImpl;

  AssetModel get asset;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessDuplicateImplCopyWith<_$SuccessDuplicateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessWithDataImplCopyWith<$Res> {
  factory _$$SuccessWithDataImplCopyWith(
    _$SuccessWithDataImpl value,
    $Res Function(_$SuccessWithDataImpl) then,
  ) = __$$SuccessWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetModel asset});

  $AssetModelCopyWith<$Res> get asset;
}

/// @nodoc
class __$$SuccessWithDataImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$SuccessWithDataImpl>
    implements _$$SuccessWithDataImplCopyWith<$Res> {
  __$$SuccessWithDataImplCopyWithImpl(
    _$SuccessWithDataImpl _value,
    $Res Function(_$SuccessWithDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null}) {
    return _then(
      _$SuccessWithDataImpl(
        null == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as AssetModel,
      ),
    );
  }

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssetModelCopyWith<$Res> get asset {
    return $AssetModelCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc

class _$SuccessWithDataImpl implements _SuccessWithData {
  const _$SuccessWithDataImpl(this.asset);

  @override
  final AssetModel asset;

  @override
  String toString() {
    return 'AssetState.successWithData(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessWithDataImpl &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessWithDataImplCopyWith<_$SuccessWithDataImpl> get copyWith =>
      __$$SuccessWithDataImplCopyWithImpl<_$SuccessWithDataImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return successWithData(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return successWithData?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (successWithData != null) {
      return successWithData(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return successWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return successWithData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (successWithData != null) {
      return successWithData(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithData implements AssetState {
  const factory _SuccessWithData(final AssetModel asset) =
      _$SuccessWithDataImpl;

  AssetModel get asset;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessWithDataImplCopyWith<_$SuccessWithDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessWithDashboardImplCopyWith<$Res> {
  factory _$$SuccessWithDashboardImplCopyWith(
    _$SuccessWithDashboardImpl value,
    $Res Function(_$SuccessWithDashboardImpl) then,
  ) = __$$SuccessWithDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DashboardModel asset});

  $DashboardModelCopyWith<$Res> get asset;
}

/// @nodoc
class __$$SuccessWithDashboardImplCopyWithImpl<$Res>
    extends _$AssetStateCopyWithImpl<$Res, _$SuccessWithDashboardImpl>
    implements _$$SuccessWithDashboardImplCopyWith<$Res> {
  __$$SuccessWithDashboardImplCopyWithImpl(
    _$SuccessWithDashboardImpl _value,
    $Res Function(_$SuccessWithDashboardImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? asset = null}) {
    return _then(
      _$SuccessWithDashboardImpl(
        null == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as DashboardModel,
      ),
    );
  }

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardModelCopyWith<$Res> get asset {
    return $DashboardModelCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc

class _$SuccessWithDashboardImpl implements _SuccessWithDashboard {
  const _$SuccessWithDashboardImpl(this.asset);

  @override
  final DashboardModel asset;

  @override
  String toString() {
    return 'AssetState.successWithDashboard(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessWithDashboardImpl &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessWithDashboardImplCopyWith<_$SuccessWithDashboardImpl>
  get copyWith =>
      __$$SuccessWithDashboardImplCopyWithImpl<_$SuccessWithDashboardImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successDuplicate,
    required TResult Function(AssetModel asset) successWithData,
    required TResult Function(DashboardModel asset) successWithDashboard,
  }) {
    return successWithDashboard(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successDuplicate,
    TResult? Function(AssetModel asset)? successWithData,
    TResult? Function(DashboardModel asset)? successWithDashboard,
  }) {
    return successWithDashboard?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successDuplicate,
    TResult Function(AssetModel asset)? successWithData,
    TResult Function(DashboardModel asset)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (successWithDashboard != null) {
      return successWithDashboard(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessDuplicate value) successDuplicate,
    required TResult Function(_SuccessWithData value) successWithData,
    required TResult Function(_SuccessWithDashboard value) successWithDashboard,
  }) {
    return successWithDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessDuplicate value)? successDuplicate,
    TResult? Function(_SuccessWithData value)? successWithData,
    TResult? Function(_SuccessWithDashboard value)? successWithDashboard,
  }) {
    return successWithDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessDuplicate value)? successDuplicate,
    TResult Function(_SuccessWithData value)? successWithData,
    TResult Function(_SuccessWithDashboard value)? successWithDashboard,
    required TResult orElse(),
  }) {
    if (successWithDashboard != null) {
      return successWithDashboard(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithDashboard implements AssetState {
  const factory _SuccessWithDashboard(final DashboardModel asset) =
      _$SuccessWithDashboardImpl;

  DashboardModel get asset;

  /// Create a copy of AssetState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessWithDashboardImplCopyWith<_$SuccessWithDashboardImpl>
  get copyWith => throw _privateConstructorUsedError;
}
