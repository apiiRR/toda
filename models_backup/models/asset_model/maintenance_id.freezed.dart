// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MaintenanceId _$MaintenanceIdFromJson(Map<String, dynamic> json) {
  return _MaintenanceId.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceId {
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceIdCopyWith<MaintenanceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceIdCopyWith<$Res> {
  factory $MaintenanceIdCopyWith(
    MaintenanceId value,
    $Res Function(MaintenanceId) then,
  ) = _$MaintenanceIdCopyWithImpl<$Res, MaintenanceId>;
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? description,
    int? id,
    String? state,
    double? cost,
    String? date,
  });
}

/// @nodoc
class _$MaintenanceIdCopyWithImpl<$Res, $Val extends MaintenanceId>
    implements $MaintenanceIdCopyWith<$Res> {
  _$MaintenanceIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? state = freezed,
    Object? cost = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                freezed == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>?,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String?,
            cost:
                freezed == cost
                    ? _value.cost
                    : cost // ignore: cast_nullable_to_non_nullable
                        as double?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MaintenanceIdImplCopyWith<$Res>
    implements $MaintenanceIdCopyWith<$Res> {
  factory _$$MaintenanceIdImplCopyWith(
    _$MaintenanceIdImpl value,
    $Res Function(_$MaintenanceIdImpl) then,
  ) = __$$MaintenanceIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') List<dynamic>? userId,
    String? description,
    int? id,
    String? state,
    double? cost,
    String? date,
  });
}

/// @nodoc
class __$$MaintenanceIdImplCopyWithImpl<$Res>
    extends _$MaintenanceIdCopyWithImpl<$Res, _$MaintenanceIdImpl>
    implements _$$MaintenanceIdImplCopyWith<$Res> {
  __$$MaintenanceIdImplCopyWithImpl(
    _$MaintenanceIdImpl _value,
    $Res Function(_$MaintenanceIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MaintenanceId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? description = freezed,
    Object? id = freezed,
    Object? state = freezed,
    Object? cost = freezed,
    Object? date = freezed,
  }) {
    return _then(
      _$MaintenanceIdImpl(
        userId:
            freezed == userId
                ? _value._userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>?,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String?,
        cost:
            freezed == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                    as double?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MaintenanceIdImpl implements _MaintenanceId {
  _$MaintenanceIdImpl({
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    this.description,
    this.id,
    this.state,
    this.cost,
    this.date,
  }) : _userId = userId;

  factory _$MaintenanceIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceIdImplFromJson(json);

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
  final String? description;
  @override
  final int? id;
  @override
  final String? state;
  @override
  final double? cost;
  @override
  final String? date;

  @override
  String toString() {
    return 'MaintenanceId(userId: $userId, description: $description, id: $id, state: $state, cost: $cost, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceIdImpl &&
            const DeepCollectionEquality().equals(other._userId, _userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_userId),
    description,
    id,
    state,
    cost,
    date,
  );

  /// Create a copy of MaintenanceId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceIdImplCopyWith<_$MaintenanceIdImpl> get copyWith =>
      __$$MaintenanceIdImplCopyWithImpl<_$MaintenanceIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceIdImplToJson(this);
  }
}

abstract class _MaintenanceId implements MaintenanceId {
  factory _MaintenanceId({
    @JsonKey(name: 'user_id') final List<dynamic>? userId,
    final String? description,
    final int? id,
    final String? state,
    final double? cost,
    final String? date,
  }) = _$MaintenanceIdImpl;

  factory _MaintenanceId.fromJson(Map<String, dynamic> json) =
      _$MaintenanceIdImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  List<dynamic>? get userId;
  @override
  String? get description;
  @override
  int? get id;
  @override
  String? get state;
  @override
  double? get cost;
  @override
  String? get date;

  /// Create a copy of MaintenanceId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceIdImplCopyWith<_$MaintenanceIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
