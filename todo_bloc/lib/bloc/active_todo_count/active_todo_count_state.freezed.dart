// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_todo_count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActiveTodoCountState _$ActiveTodoCountStateFromJson(Map<String, dynamic> json) {
  return _ActiveTodoCountState.fromJson(json);
}

/// @nodoc
mixin _$ActiveTodoCountState {
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ActiveTodoCountState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveTodoCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveTodoCountStateCopyWith<ActiveTodoCountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTodoCountStateCopyWith<$Res> {
  factory $ActiveTodoCountStateCopyWith(ActiveTodoCountState value,
          $Res Function(ActiveTodoCountState) then) =
      _$ActiveTodoCountStateCopyWithImpl<$Res, ActiveTodoCountState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$ActiveTodoCountStateCopyWithImpl<$Res,
        $Val extends ActiveTodoCountState>
    implements $ActiveTodoCountStateCopyWith<$Res> {
  _$ActiveTodoCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveTodoCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveTodoCountStateImplCopyWith<$Res>
    implements $ActiveTodoCountStateCopyWith<$Res> {
  factory _$$ActiveTodoCountStateImplCopyWith(_$ActiveTodoCountStateImpl value,
          $Res Function(_$ActiveTodoCountStateImpl) then) =
      __$$ActiveTodoCountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$ActiveTodoCountStateImplCopyWithImpl<$Res>
    extends _$ActiveTodoCountStateCopyWithImpl<$Res, _$ActiveTodoCountStateImpl>
    implements _$$ActiveTodoCountStateImplCopyWith<$Res> {
  __$$ActiveTodoCountStateImplCopyWithImpl(_$ActiveTodoCountStateImpl _value,
      $Res Function(_$ActiveTodoCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveTodoCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$ActiveTodoCountStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveTodoCountStateImpl implements _ActiveTodoCountState {
  const _$ActiveTodoCountStateImpl({this.count = 0});

  factory _$ActiveTodoCountStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveTodoCountStateImplFromJson(json);

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'ActiveTodoCountState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveTodoCountStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of ActiveTodoCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveTodoCountStateImplCopyWith<_$ActiveTodoCountStateImpl>
      get copyWith =>
          __$$ActiveTodoCountStateImplCopyWithImpl<_$ActiveTodoCountStateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveTodoCountStateImplToJson(
      this,
    );
  }
}

abstract class _ActiveTodoCountState implements ActiveTodoCountState {
  const factory _ActiveTodoCountState({final int count}) =
      _$ActiveTodoCountStateImpl;

  factory _ActiveTodoCountState.fromJson(Map<String, dynamic> json) =
      _$ActiveTodoCountStateImpl.fromJson;

  @override
  int get count;

  /// Create a copy of ActiveTodoCountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveTodoCountStateImplCopyWith<_$ActiveTodoCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}