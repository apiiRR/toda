// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BarcodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Map<String, dynamic>> asset) movingData,
    required TResult Function(String code) detailData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Map<String, dynamic>> asset)? movingData,
    TResult? Function(String code)? detailData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Map<String, dynamic>> asset)? movingData,
    TResult Function(String code)? detailData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovingData value) movingData,
    required TResult Function(_DetailData value) detailData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovingData value)? movingData,
    TResult? Function(_DetailData value)? detailData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovingData value)? movingData,
    TResult Function(_DetailData value)? detailData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeEventCopyWith<$Res> {
  factory $BarcodeEventCopyWith(
          BarcodeEvent value, $Res Function(BarcodeEvent) then) =
      _$BarcodeEventCopyWithImpl<$Res, BarcodeEvent>;
}

/// @nodoc
class _$BarcodeEventCopyWithImpl<$Res, $Val extends BarcodeEvent>
    implements $BarcodeEventCopyWith<$Res> {
  _$BarcodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BarcodeEvent.started()';
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
    required TResult Function(List<Map<String, dynamic>> asset) movingData,
    required TResult Function(String code) detailData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Map<String, dynamic>> asset)? movingData,
    TResult? Function(String code)? detailData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Map<String, dynamic>> asset)? movingData,
    TResult Function(String code)? detailData,
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
    required TResult Function(_MovingData value) movingData,
    required TResult Function(_DetailData value) detailData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovingData value)? movingData,
    TResult? Function(_DetailData value)? detailData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovingData value)? movingData,
    TResult Function(_DetailData value)? detailData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BarcodeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MovingDataImplCopyWith<$Res> {
  factory _$$MovingDataImplCopyWith(
          _$MovingDataImpl value, $Res Function(_$MovingDataImpl) then) =
      __$$MovingDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> asset});
}

/// @nodoc
class __$$MovingDataImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$MovingDataImpl>
    implements _$$MovingDataImplCopyWith<$Res> {
  __$$MovingDataImplCopyWithImpl(
      _$MovingDataImpl _value, $Res Function(_$MovingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
  }) {
    return _then(_$MovingDataImpl(
      null == asset
          ? _value._asset
          : asset // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$MovingDataImpl implements _MovingData {
  const _$MovingDataImpl(final List<Map<String, dynamic>> asset)
      : _asset = asset;

  final List<Map<String, dynamic>> _asset;
  @override
  List<Map<String, dynamic>> get asset {
    if (_asset is EqualUnmodifiableListView) return _asset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_asset);
  }

  @override
  String toString() {
    return 'BarcodeEvent.movingData(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovingDataImpl &&
            const DeepCollectionEquality().equals(other._asset, _asset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_asset));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovingDataImplCopyWith<_$MovingDataImpl> get copyWith =>
      __$$MovingDataImplCopyWithImpl<_$MovingDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Map<String, dynamic>> asset) movingData,
    required TResult Function(String code) detailData,
  }) {
    return movingData(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Map<String, dynamic>> asset)? movingData,
    TResult? Function(String code)? detailData,
  }) {
    return movingData?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Map<String, dynamic>> asset)? movingData,
    TResult Function(String code)? detailData,
    required TResult orElse(),
  }) {
    if (movingData != null) {
      return movingData(asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovingData value) movingData,
    required TResult Function(_DetailData value) detailData,
  }) {
    return movingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovingData value)? movingData,
    TResult? Function(_DetailData value)? detailData,
  }) {
    return movingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovingData value)? movingData,
    TResult Function(_DetailData value)? detailData,
    required TResult orElse(),
  }) {
    if (movingData != null) {
      return movingData(this);
    }
    return orElse();
  }
}

abstract class _MovingData implements BarcodeEvent {
  const factory _MovingData(final List<Map<String, dynamic>> asset) =
      _$MovingDataImpl;

  List<Map<String, dynamic>> get asset;
  @JsonKey(ignore: true)
  _$$MovingDataImplCopyWith<_$MovingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailDataImplCopyWith<$Res> {
  factory _$$DetailDataImplCopyWith(
          _$DetailDataImpl value, $Res Function(_$DetailDataImpl) then) =
      __$$DetailDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$DetailDataImplCopyWithImpl<$Res>
    extends _$BarcodeEventCopyWithImpl<$Res, _$DetailDataImpl>
    implements _$$DetailDataImplCopyWith<$Res> {
  __$$DetailDataImplCopyWithImpl(
      _$DetailDataImpl _value, $Res Function(_$DetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$DetailDataImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailDataImpl implements _DetailData {
  const _$DetailDataImpl(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'BarcodeEvent.detailData(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDataImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDataImplCopyWith<_$DetailDataImpl> get copyWith =>
      __$$DetailDataImplCopyWithImpl<_$DetailDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Map<String, dynamic>> asset) movingData,
    required TResult Function(String code) detailData,
  }) {
    return detailData(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Map<String, dynamic>> asset)? movingData,
    TResult? Function(String code)? detailData,
  }) {
    return detailData?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Map<String, dynamic>> asset)? movingData,
    TResult Function(String code)? detailData,
    required TResult orElse(),
  }) {
    if (detailData != null) {
      return detailData(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MovingData value) movingData,
    required TResult Function(_DetailData value) detailData,
  }) {
    return detailData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MovingData value)? movingData,
    TResult? Function(_DetailData value)? detailData,
  }) {
    return detailData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MovingData value)? movingData,
    TResult Function(_DetailData value)? detailData,
    required TResult orElse(),
  }) {
    if (detailData != null) {
      return detailData(this);
    }
    return orElse();
  }
}

abstract class _DetailData implements BarcodeEvent {
  const factory _DetailData(final String code) = _$DetailDataImpl;

  String get code;
  @JsonKey(ignore: true)
  _$$DetailDataImplCopyWith<_$DetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BarcodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeStateCopyWith<$Res> {
  factory $BarcodeStateCopyWith(
          BarcodeState value, $Res Function(BarcodeState) then) =
      _$BarcodeStateCopyWithImpl<$Res, BarcodeState>;
}

/// @nodoc
class _$BarcodeStateCopyWithImpl<$Res, $Val extends BarcodeState>
    implements $BarcodeStateCopyWith<$Res> {
  _$BarcodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BarcodeState.initial()';
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
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
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
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
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
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
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
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
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
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
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
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BarcodeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BarcodeState.loading()';
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
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
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
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
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
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
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
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
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
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
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
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BarcodeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BarcodeState.error(errorMessage: $errorMessage)';
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

  @JsonKey(ignore: true)
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
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
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
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
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
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
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
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
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
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
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
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BarcodeState {
  const factory _Error(final String errorMessage) = _$ErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BarcodeState.success(message: $message)';
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

  @JsonKey(ignore: true)
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
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
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
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
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
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
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
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
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
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
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
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BarcodeState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessWithDataAssetImplCopyWith<$Res> {
  factory _$$SuccessWithDataAssetImplCopyWith(_$SuccessWithDataAssetImpl value,
          $Res Function(_$SuccessWithDataAssetImpl) then) =
      __$$SuccessWithDataAssetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetModel asset});

  $AssetModelCopyWith<$Res> get asset;
}

/// @nodoc
class __$$SuccessWithDataAssetImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$SuccessWithDataAssetImpl>
    implements _$$SuccessWithDataAssetImplCopyWith<$Res> {
  __$$SuccessWithDataAssetImplCopyWithImpl(_$SuccessWithDataAssetImpl _value,
      $Res Function(_$SuccessWithDataAssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
  }) {
    return _then(_$SuccessWithDataAssetImpl(
      null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AssetModelCopyWith<$Res> get asset {
    return $AssetModelCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc

class _$SuccessWithDataAssetImpl implements _SuccessWithDataAsset {
  const _$SuccessWithDataAssetImpl(this.asset);

  @override
  final AssetModel asset;

  @override
  String toString() {
    return 'BarcodeState.successWithDataAsset(asset: $asset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessWithDataAssetImpl &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessWithDataAssetImplCopyWith<_$SuccessWithDataAssetImpl>
      get copyWith =>
          __$$SuccessWithDataAssetImplCopyWithImpl<_$SuccessWithDataAssetImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
  }) {
    return successWithDataAsset(asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
  }) {
    return successWithDataAsset?.call(asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (successWithDataAsset != null) {
      return successWithDataAsset(asset);
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
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
  }) {
    return successWithDataAsset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
  }) {
    return successWithDataAsset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (successWithDataAsset != null) {
      return successWithDataAsset(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithDataAsset implements BarcodeState {
  const factory _SuccessWithDataAsset(final AssetModel asset) =
      _$SuccessWithDataAssetImpl;

  AssetModel get asset;
  @JsonKey(ignore: true)
  _$$SuccessWithDataAssetImplCopyWith<_$SuccessWithDataAssetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessWithDataLocationImplCopyWith<$Res> {
  factory _$$SuccessWithDataLocationImplCopyWith(
          _$SuccessWithDataLocationImpl value,
          $Res Function(_$SuccessWithDataLocationImpl) then) =
      __$$SuccessWithDataLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationModel location});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$SuccessWithDataLocationImplCopyWithImpl<$Res>
    extends _$BarcodeStateCopyWithImpl<$Res, _$SuccessWithDataLocationImpl>
    implements _$$SuccessWithDataLocationImplCopyWith<$Res> {
  __$$SuccessWithDataLocationImplCopyWithImpl(
      _$SuccessWithDataLocationImpl _value,
      $Res Function(_$SuccessWithDataLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SuccessWithDataLocationImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$SuccessWithDataLocationImpl implements _SuccessWithDataLocation {
  const _$SuccessWithDataLocationImpl(this.location);

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'BarcodeState.successWithDataLocation(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessWithDataLocationImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessWithDataLocationImplCopyWith<_$SuccessWithDataLocationImpl>
      get copyWith => __$$SuccessWithDataLocationImplCopyWithImpl<
          _$SuccessWithDataLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(String message) success,
    required TResult Function(AssetModel asset) successWithDataAsset,
    required TResult Function(LocationModel location) successWithDataLocation,
  }) {
    return successWithDataLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(String message)? success,
    TResult? Function(AssetModel asset)? successWithDataAsset,
    TResult? Function(LocationModel location)? successWithDataLocation,
  }) {
    return successWithDataLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(String message)? success,
    TResult Function(AssetModel asset)? successWithDataAsset,
    TResult Function(LocationModel location)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (successWithDataLocation != null) {
      return successWithDataLocation(location);
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
    required TResult Function(_SuccessWithDataAsset value) successWithDataAsset,
    required TResult Function(_SuccessWithDataLocation value)
        successWithDataLocation,
  }) {
    return successWithDataLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult? Function(_SuccessWithDataLocation value)? successWithDataLocation,
  }) {
    return successWithDataLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithDataAsset value)? successWithDataAsset,
    TResult Function(_SuccessWithDataLocation value)? successWithDataLocation,
    required TResult orElse(),
  }) {
    if (successWithDataLocation != null) {
      return successWithDataLocation(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithDataLocation implements BarcodeState {
  const factory _SuccessWithDataLocation(final LocationModel location) =
      _$SuccessWithDataLocationImpl;

  LocationModel get location;
  @JsonKey(ignore: true)
  _$$SuccessWithDataLocationImplCopyWith<_$SuccessWithDataLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
