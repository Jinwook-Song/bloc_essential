// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoFilterState _$TodoFilterStateFromJson(Map<String, dynamic> json) {
  return _TodoFilterState.fromJson(json);
}

/// @nodoc
mixin _$TodoFilterState {
  Filter get filter => throw _privateConstructorUsedError;

  /// Serializes this TodoFilterState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoFilterStateCopyWith<TodoFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFilterStateCopyWith<$Res> {
  factory $TodoFilterStateCopyWith(
          TodoFilterState value, $Res Function(TodoFilterState) then) =
      _$TodoFilterStateCopyWithImpl<$Res, TodoFilterState>;
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class _$TodoFilterStateCopyWithImpl<$Res, $Val extends TodoFilterState>
    implements $TodoFilterStateCopyWith<$Res> {
  _$TodoFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoFilterStateImplCopyWith<$Res>
    implements $TodoFilterStateCopyWith<$Res> {
  factory _$$TodoFilterStateImplCopyWith(_$TodoFilterStateImpl value,
          $Res Function(_$TodoFilterStateImpl) then) =
      __$$TodoFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Filter filter});
}

/// @nodoc
class __$$TodoFilterStateImplCopyWithImpl<$Res>
    extends _$TodoFilterStateCopyWithImpl<$Res, _$TodoFilterStateImpl>
    implements _$$TodoFilterStateImplCopyWith<$Res> {
  __$$TodoFilterStateImplCopyWithImpl(
      _$TodoFilterStateImpl _value, $Res Function(_$TodoFilterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$TodoFilterStateImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoFilterStateImpl implements _TodoFilterState {
  const _$TodoFilterStateImpl({this.filter = Filter.all});

  factory _$TodoFilterStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoFilterStateImplFromJson(json);

  @override
  @JsonKey()
  final Filter filter;

  @override
  String toString() {
    return 'TodoFilterState(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoFilterStateImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of TodoFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoFilterStateImplCopyWith<_$TodoFilterStateImpl> get copyWith =>
      __$$TodoFilterStateImplCopyWithImpl<_$TodoFilterStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoFilterStateImplToJson(
      this,
    );
  }
}

abstract class _TodoFilterState implements TodoFilterState {
  const factory _TodoFilterState({final Filter filter}) = _$TodoFilterStateImpl;

  factory _TodoFilterState.fromJson(Map<String, dynamic> json) =
      _$TodoFilterStateImpl.fromJson;

  @override
  Filter get filter;

  /// Create a copy of TodoFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoFilterStateImplCopyWith<_$TodoFilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
