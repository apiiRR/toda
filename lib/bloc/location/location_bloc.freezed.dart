// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
    LocationEvent value,
    $Res Function(LocationEvent) then,
  ) = _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationEvent
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
    extends _$LocationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LocationEvent.started()';
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
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
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
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LocationEvent {
  const factory _Started() = _$StartedImpl;
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
    extends _$LocationEventCopyWithImpl<$Res, _$ScanDataImpl>
    implements _$$ScanDataImplCopyWith<$Res> {
  __$$ScanDataImplCopyWithImpl(
    _$ScanDataImpl _value,
    $Res Function(_$ScanDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
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
    return 'LocationEvent.scanData(name: $name)';
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

  /// Create a copy of LocationEvent
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
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return scanData(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return scanData?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
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
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return scanData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return scanData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (scanData != null) {
      return scanData(this);
    }
    return orElse();
  }
}

abstract class _ScanData implements LocationEvent {
  const factory _ScanData(final String name) = _$ScanDataImpl;

  String get name;

  /// Create a copy of LocationEvent
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
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
    _$GetDataImpl _value,
    $Res Function(_$GetDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl();

  @override
  String toString() {
    return 'LocationEvent.getData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return getData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return getData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements LocationEvent {
  const factory _GetData() = _$GetDataImpl;
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
    extends _$LocationEventCopyWithImpl<$Res, _$GetDataSingleImpl>
    implements _$$GetDataSingleImplCopyWith<$Res> {
  __$$GetDataSingleImplCopyWithImpl(
    _$GetDataSingleImpl _value,
    $Res Function(_$GetDataSingleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
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
    return 'LocationEvent.getDataSingle(id: $id)';
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

  /// Create a copy of LocationEvent
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
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return getDataSingle(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return getDataSingle?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
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
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return getDataSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return getDataSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (getDataSingle != null) {
      return getDataSingle(this);
    }
    return orElse();
  }
}

abstract class _GetDataSingle implements LocationEvent {
  const factory _GetDataSingle(final int id) = _$GetDataSingleImpl;

  int get id;

  /// Create a copy of LocationEvent
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
  $Res call({Map<String, dynamic> location});
}

/// @nodoc
class __$$PostDataImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$PostDataImpl>
    implements _$$PostDataImplCopyWith<$Res> {
  __$$PostDataImplCopyWithImpl(
    _$PostDataImpl _value,
    $Res Function(_$PostDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null}) {
    return _then(
      _$PostDataImpl(
        null == location
            ? _value._location
            : location // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$PostDataImpl implements _PostData {
  const _$PostDataImpl(final Map<String, dynamic> location)
    : _location = location;

  final Map<String, dynamic> _location;
  @override
  Map<String, dynamic> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  String toString() {
    return 'LocationEvent.postData(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataImpl &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_location));

  /// Create a copy of LocationEvent
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
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return postData(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return postData?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
    required TResult orElse(),
  }) {
    if (postData != null) {
      return postData(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return postData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return postData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (postData != null) {
      return postData(this);
    }
    return orElse();
  }
}

abstract class _PostData implements LocationEvent {
  const factory _PostData(final Map<String, dynamic> location) = _$PostDataImpl;

  Map<String, dynamic> get location;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PutDataImplCopyWith<$Res> {
  factory _$$PutDataImplCopyWith(
    _$PutDataImpl value,
    $Res Function(_$PutDataImpl) then,
  ) = __$$PutDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> location, int id});
}

/// @nodoc
class __$$PutDataImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$PutDataImpl>
    implements _$$PutDataImplCopyWith<$Res> {
  __$$PutDataImplCopyWithImpl(
    _$PutDataImpl _value,
    $Res Function(_$PutDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null, Object? id = null}) {
    return _then(
      _$PutDataImpl(
        null == location
            ? _value._location
            : location // ignore: cast_nullable_to_non_nullable
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
  const _$PutDataImpl(final Map<String, dynamic> location, this.id)
    : _location = location;

  final Map<String, dynamic> _location;
  @override
  Map<String, dynamic> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  final int id;

  @override
  String toString() {
    return 'LocationEvent.putData(location: $location, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutDataImpl &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_location),
    id,
  );

  /// Create a copy of LocationEvent
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
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return putData(location, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return putData?.call(location, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
    required TResult orElse(),
  }) {
    if (putData != null) {
      return putData(location, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return putData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return putData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (putData != null) {
      return putData(this);
    }
    return orElse();
  }
}

abstract class _PutData implements LocationEvent {
  const factory _PutData(final Map<String, dynamic> location, final int id) =
      _$PutDataImpl;

  Map<String, dynamic> get location;
  int get id;

  /// Create a copy of LocationEvent
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
    extends _$LocationEventCopyWithImpl<$Res, _$DeleteDataImpl>
    implements _$$DeleteDataImplCopyWith<$Res> {
  __$$DeleteDataImplCopyWithImpl(
    _$DeleteDataImpl _value,
    $Res Function(_$DeleteDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationEvent
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
    return 'LocationEvent.deleteData(id: $id)';
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

  /// Create a copy of LocationEvent
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
    required TResult Function(String name) scanData,
    required TResult Function() getData,
    required TResult Function(int id) getDataSingle,
    required TResult Function(Map<String, dynamic> location) postData,
    required TResult Function(Map<String, dynamic> location, int id) putData,
    required TResult Function(int id) deleteData,
  }) {
    return deleteData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name)? scanData,
    TResult? Function()? getData,
    TResult? Function(int id)? getDataSingle,
    TResult? Function(Map<String, dynamic> location)? postData,
    TResult? Function(Map<String, dynamic> location, int id)? putData,
    TResult? Function(int id)? deleteData,
  }) {
    return deleteData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name)? scanData,
    TResult Function()? getData,
    TResult Function(int id)? getDataSingle,
    TResult Function(Map<String, dynamic> location)? postData,
    TResult Function(Map<String, dynamic> location, int id)? putData,
    TResult Function(int id)? deleteData,
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
    required TResult Function(_ScanData value) scanData,
    required TResult Function(_GetData value) getData,
    required TResult Function(_GetDataSingle value) getDataSingle,
    required TResult Function(_PostData value) postData,
    required TResult Function(_PutData value) putData,
    required TResult Function(_DeleteData value) deleteData,
  }) {
    return deleteData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ScanData value)? scanData,
    TResult? Function(_GetData value)? getData,
    TResult? Function(_GetDataSingle value)? getDataSingle,
    TResult? Function(_PostData value)? postData,
    TResult? Function(_PutData value)? putData,
    TResult? Function(_DeleteData value)? deleteData,
  }) {
    return deleteData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ScanData value)? scanData,
    TResult Function(_GetData value)? getData,
    TResult Function(_GetDataSingle value)? getDataSingle,
    TResult Function(_PostData value)? postData,
    TResult Function(_PutData value)? putData,
    TResult Function(_DeleteData value)? deleteData,
    required TResult orElse(),
  }) {
    if (deleteData != null) {
      return deleteData(this);
    }
    return orElse();
  }
}

abstract class _DeleteData implements LocationEvent {
  const factory _DeleteData(final int id) = _$DeleteDataImpl;

  int get id;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteDataImplCopyWith<_$DeleteDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(LocationModel location) successWithData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(LocationModel location)? successWithData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(LocationModel location)? successWithData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithData value) successWithData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithData value)? successWithData,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithData value)? successWithData,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
    LocationState value,
    $Res Function(LocationState) then,
  ) = _$LocationStateCopyWithImpl<$Res, LocationState>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationState
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
    extends _$LocationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LocationState.initial()';
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
    required TResult Function(LocationModel location) successWithData,
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
    TResult? Function(LocationModel location)? successWithData,
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
    TResult Function(LocationModel location)? successWithData,
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
    required TResult Function(_SuccessWithData value) successWithData,
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
    TResult? Function(_SuccessWithData value)? successWithData,
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
    TResult Function(_SuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationState {
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
    extends _$LocationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LocationState.loading()';
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
    required TResult Function(LocationModel location) successWithData,
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
    TResult? Function(LocationModel location)? successWithData,
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
    TResult Function(LocationModel location)? successWithData,
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
    required TResult Function(_SuccessWithData value) successWithData,
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
    TResult? Function(_SuccessWithData value)? successWithData,
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
    TResult Function(_SuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LocationState {
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
    extends _$LocationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
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
    return 'LocationState.error(errorMessage: $errorMessage)';
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

  /// Create a copy of LocationState
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
    required TResult Function(LocationModel location) successWithData,
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
    TResult? Function(LocationModel location)? successWithData,
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
    TResult Function(LocationModel location)? successWithData,
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
    required TResult Function(_SuccessWithData value) successWithData,
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
    TResult? Function(_SuccessWithData value)? successWithData,
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
    TResult Function(_SuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LocationState {
  const factory _Error(final String errorMessage) = _$ErrorImpl;

  String get errorMessage;

  /// Create a copy of LocationState
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
    extends _$LocationStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
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
    return 'LocationState.success(message: $message)';
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

  /// Create a copy of LocationState
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
    required TResult Function(LocationModel location) successWithData,
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
    TResult? Function(LocationModel location)? successWithData,
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
    TResult Function(LocationModel location)? successWithData,
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
    required TResult Function(_SuccessWithData value) successWithData,
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
    TResult? Function(_SuccessWithData value)? successWithData,
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
    TResult Function(_SuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LocationState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessWithDataImplCopyWith<$Res> {
  factory _$$SuccessWithDataImplCopyWith(
    _$SuccessWithDataImpl value,
    $Res Function(_$SuccessWithDataImpl) then,
  ) = __$$SuccessWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel location});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$SuccessWithDataImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$SuccessWithDataImpl>
    implements _$$SuccessWithDataImplCopyWith<$Res> {
  __$$SuccessWithDataImplCopyWithImpl(
    _$SuccessWithDataImpl _value,
    $Res Function(_$SuccessWithDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? location = null}) {
    return _then(
      _$SuccessWithDataImpl(
        null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as LocationModel,
      ),
    );
  }

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$SuccessWithDataImpl implements _SuccessWithData {
  const _$SuccessWithDataImpl(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'LocationState.successWithData(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessWithDataImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  /// Create a copy of LocationState
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
    required TResult Function(LocationModel location) successWithData,
  }) {
    return successWithData(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(LocationModel location)? successWithData,
  }) {
    return successWithData?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(LocationModel location)? successWithData,
    required TResult orElse(),
  }) {
    if (successWithData != null) {
      return successWithData(location);
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
    required TResult Function(_SuccessWithData value) successWithData,
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
    TResult? Function(_SuccessWithData value)? successWithData,
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
    TResult Function(_SuccessWithData value)? successWithData,
    required TResult orElse(),
  }) {
    if (successWithData != null) {
      return successWithData(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithData implements LocationState {
  const factory _SuccessWithData(final LocationModel location) =
      _$SuccessWithDataImpl;

  LocationModel get location;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessWithDataImplCopyWith<_$SuccessWithDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
