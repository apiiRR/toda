// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, String> data) login,
    required TResult Function() authDetail,
    required TResult Function() checkSignInStatus,
    required TResult Function() logOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, String> data)? login,
    TResult? Function()? authDetail,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? logOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, String> data)? login,
    TResult Function()? authDetail,
    TResult Function()? checkSignInStatus,
    TResult Function()? logOut,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_AuthDetail value) authDetail,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_LogOut value) logOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_AuthDetail value)? authDetail,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_LogOut value)? logOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_AuthDetail value)? authDetail,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
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
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'AuthEvent.started()';
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
    required TResult Function(Map<String, String> data) login,
    required TResult Function() authDetail,
    required TResult Function() checkSignInStatus,
    required TResult Function() logOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, String> data)? login,
    TResult? Function()? authDetail,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? logOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, String> data)? login,
    TResult Function()? authDetail,
    TResult Function()? checkSignInStatus,
    TResult Function()? logOut,
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
    required TResult Function(_Login value) login,
    required TResult Function(_AuthDetail value) authDetail,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_LogOut value) logOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_AuthDetail value)? authDetail,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_AuthDetail value)? authDetail,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
    _$LoginImpl value,
    $Res Function(_$LoginImpl) then,
  ) = __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> data});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
    _$LoginImpl _value,
    $Res Function(_$LoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$LoginImpl(
        null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                as Map<String, String>,
      ),
    );
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(final Map<String, String> data) : _data = data;

  final Map<String, String> _data;
  @override
  Map<String, String> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'AuthEvent.login(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, String> data) login,
    required TResult Function() authDetail,
    required TResult Function() checkSignInStatus,
    required TResult Function() logOut,
  }) {
    return login(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, String> data)? login,
    TResult? Function()? authDetail,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? logOut,
  }) {
    return login?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, String> data)? login,
    TResult Function()? authDetail,
    TResult Function()? checkSignInStatus,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_AuthDetail value) authDetail,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_LogOut value) logOut,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_AuthDetail value)? authDetail,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_AuthDetail value)? authDetail,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(final Map<String, String> data) = _$LoginImpl;

  Map<String, String> get data;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthDetailImplCopyWith<$Res> {
  factory _$$AuthDetailImplCopyWith(
    _$AuthDetailImpl value,
    $Res Function(_$AuthDetailImpl) then,
  ) = __$$AuthDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthDetailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthDetailImpl>
    implements _$$AuthDetailImplCopyWith<$Res> {
  __$$AuthDetailImplCopyWithImpl(
    _$AuthDetailImpl _value,
    $Res Function(_$AuthDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthDetailImpl implements _AuthDetail {
  const _$AuthDetailImpl();

  @override
  String toString() {
    return 'AuthEvent.authDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, String> data) login,
    required TResult Function() authDetail,
    required TResult Function() checkSignInStatus,
    required TResult Function() logOut,
  }) {
    return authDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, String> data)? login,
    TResult? Function()? authDetail,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? logOut,
  }) {
    return authDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, String> data)? login,
    TResult Function()? authDetail,
    TResult Function()? checkSignInStatus,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (authDetail != null) {
      return authDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_AuthDetail value) authDetail,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_LogOut value) logOut,
  }) {
    return authDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_AuthDetail value)? authDetail,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return authDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_AuthDetail value)? authDetail,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (authDetail != null) {
      return authDetail(this);
    }
    return orElse();
  }
}

abstract class _AuthDetail implements AuthEvent {
  const factory _AuthDetail() = _$AuthDetailImpl;
}

/// @nodoc
abstract class _$$CheckSignInStatusImplCopyWith<$Res> {
  factory _$$CheckSignInStatusImplCopyWith(
    _$CheckSignInStatusImpl value,
    $Res Function(_$CheckSignInStatusImpl) then,
  ) = __$$CheckSignInStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSignInStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckSignInStatusImpl>
    implements _$$CheckSignInStatusImplCopyWith<$Res> {
  __$$CheckSignInStatusImplCopyWithImpl(
    _$CheckSignInStatusImpl _value,
    $Res Function(_$CheckSignInStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckSignInStatusImpl implements _CheckSignInStatus {
  const _$CheckSignInStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkSignInStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSignInStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, String> data) login,
    required TResult Function() authDetail,
    required TResult Function() checkSignInStatus,
    required TResult Function() logOut,
  }) {
    return checkSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, String> data)? login,
    TResult? Function()? authDetail,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? logOut,
  }) {
    return checkSignInStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, String> data)? login,
    TResult Function()? authDetail,
    TResult Function()? checkSignInStatus,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_AuthDetail value) authDetail,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_LogOut value) logOut,
  }) {
    return checkSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_AuthDetail value)? authDetail,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return checkSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_AuthDetail value)? authDetail,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckSignInStatus implements AuthEvent {
  const factory _CheckSignInStatus() = _$CheckSignInStatusImpl;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
    _$LogOutImpl value,
    $Res Function(_$LogOutImpl) then,
  ) = __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
    _$LogOutImpl _value,
    $Res Function(_$LogOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Map<String, String> data) login,
    required TResult Function() authDetail,
    required TResult Function() checkSignInStatus,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Map<String, String> data)? login,
    TResult? Function()? authDetail,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Map<String, String> data)? login,
    TResult Function()? authDetail,
    TResult Function()? checkSignInStatus,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_AuthDetail value) authDetail,
    required TResult Function(_CheckSignInStatus value) checkSignInStatus,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_AuthDetail value)? authDetail,
    TResult? Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_AuthDetail value)? authDetail,
    TResult Function(_CheckSignInStatus value)? checkSignInStatus,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
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
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
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
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
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
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
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
    return 'AuthState.error(errorMessage: $errorMessage)';
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

  /// Create a copy of AuthState
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
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
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
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String errorMessage) = _$ErrorImpl;

  String get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedInImplCopyWith<$Res> {
  factory _$$SignedInImplCopyWith(
    _$SignedInImpl value,
    $Res Function(_$SignedInImpl) then,
  ) = __$$SignedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedInImpl>
    implements _$$SignedInImplCopyWith<$Res> {
  __$$SignedInImplCopyWithImpl(
    _$SignedInImpl _value,
    $Res Function(_$SignedInImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignedInImpl implements _SignedIn {
  const _$SignedInImpl();

  @override
  String toString() {
    return 'AuthState.signedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedIn implements AuthState {
  const factory _SignedIn() = _$SignedInImpl;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
    _$SignedOutImpl value,
    $Res Function(_$SignedOutImpl) then,
  ) = __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
    _$SignedOutImpl _value,
    $Res Function(_$SignedOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignedOutImpl implements _SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'AuthState.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthState {
  const factory _SignedOut() = _$SignedOutImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$SuccessWithTextImplCopyWith<$Res> {
  factory _$$SuccessWithTextImplCopyWith(
    _$SuccessWithTextImpl value,
    $Res Function(_$SuccessWithTextImpl) then,
  ) = __$$SuccessWithTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SuccessWithTextImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessWithTextImpl>
    implements _$$SuccessWithTextImplCopyWith<$Res> {
  __$$SuccessWithTextImplCopyWithImpl(
    _$SuccessWithTextImpl _value,
    $Res Function(_$SuccessWithTextImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = null}) {
    return _then(
      _$SuccessWithTextImpl(
        null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessWithTextImpl implements _SuccessWithText {
  const _$SuccessWithTextImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'AuthState.successWithText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessWithTextImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessWithTextImplCopyWith<_$SuccessWithTextImpl> get copyWith =>
      __$$SuccessWithTextImplCopyWithImpl<_$SuccessWithTextImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return successWithText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return successWithText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
    required TResult orElse(),
  }) {
    if (successWithText != null) {
      return successWithText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return successWithText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return successWithText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (successWithText != null) {
      return successWithText(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithText implements AuthState {
  const factory _SuccessWithText(final String text) = _$SuccessWithTextImpl;

  String get text;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessWithTextImplCopyWith<_$SuccessWithTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
    _$ProfileImpl value,
    $Res Function(_$ProfileImpl) then,
  ) = __$$ProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileModel data});

  $ProfileModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
    _$ProfileImpl _value,
    $Res Function(_$ProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$ProfileImpl(
        null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as ProfileModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res> get data {
    return $ProfileModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(this.data);

  @override
  final ProfileModel data;

  @override
  String toString() {
    return 'AuthState.profile(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
    required TResult Function() success,
    required TResult Function(String text) successWithText,
    required TResult Function(ProfileModel data) profile,
  }) {
    return profile(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
    TResult? Function()? success,
    TResult? Function(String text)? successWithText,
    TResult? Function(ProfileModel data)? profile,
  }) {
    return profile?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    TResult Function()? success,
    TResult Function(String text)? successWithText,
    TResult Function(ProfileModel data)? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SignedIn value) signedIn,
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithText value) successWithText,
    required TResult Function(_Profile value) profile,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SignedIn value)? signedIn,
    TResult? Function(_SignedOut value)? signedOut,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithText value)? successWithText,
    TResult? Function(_Profile value)? profile,
  }) {
    return profile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SignedIn value)? signedIn,
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithText value)? successWithText,
    TResult Function(_Profile value)? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class _Profile implements AuthState {
  const factory _Profile(final ProfileModel data) = _$ProfileImpl;

  ProfileModel get data;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
