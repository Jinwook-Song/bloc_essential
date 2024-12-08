// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoSearchState _$TodoSearchStateFromJson(Map<String, dynamic> json) {
  return _TodoSearchState.fromJson(json);
}

/// @nodoc
mixin _$TodoSearchState {
  String get term => throw _privateConstructorUsedError;

  /// Serializes this TodoSearchState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoSearchStateCopyWith<TodoSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoSearchStateCopyWith<$Res> {
  factory $TodoSearchStateCopyWith(
          TodoSearchState value, $Res Function(TodoSearchState) then) =
      _$TodoSearchStateCopyWithImpl<$Res, TodoSearchState>;
  @useResult
  $Res call({String term});
}

/// @nodoc
class _$TodoSearchStateCopyWithImpl<$Res, $Val extends TodoSearchState>
    implements $TodoSearchStateCopyWith<$Res> {
  _$TodoSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = null,
  }) {
    return _then(_value.copyWith(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoSearchStateImplCopyWith<$Res>
    implements $TodoSearchStateCopyWith<$Res> {
  factory _$$TodoSearchStateImplCopyWith(_$TodoSearchStateImpl value,
          $Res Function(_$TodoSearchStateImpl) then) =
      __$$TodoSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String term});
}

/// @nodoc
class __$$TodoSearchStateImplCopyWithImpl<$Res>
    extends _$TodoSearchStateCopyWithImpl<$Res, _$TodoSearchStateImpl>
    implements _$$TodoSearchStateImplCopyWith<$Res> {
  __$$TodoSearchStateImplCopyWithImpl(
      _$TodoSearchStateImpl _value, $Res Function(_$TodoSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? term = null,
  }) {
    return _then(_$TodoSearchStateImpl(
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoSearchStateImpl implements _TodoSearchState {
  const _$TodoSearchStateImpl({this.term = ''});

  factory _$TodoSearchStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoSearchStateImplFromJson(json);

  @override
  @JsonKey()
  final String term;

  @override
  String toString() {
    return 'TodoSearchState(term: $term)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoSearchStateImpl &&
            (identical(other.term, term) || other.term == term));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, term);

  /// Create a copy of TodoSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoSearchStateImplCopyWith<_$TodoSearchStateImpl> get copyWith =>
      __$$TodoSearchStateImplCopyWithImpl<_$TodoSearchStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoSearchStateImplToJson(
      this,
    );
  }
}

abstract class _TodoSearchState implements TodoSearchState {
  const factory _TodoSearchState({final String term}) = _$TodoSearchStateImpl;

  factory _TodoSearchState.fromJson(Map<String, dynamic> json) =
      _$TodoSearchStateImpl.fromJson;

  @override
  String get term;

  /// Create a copy of TodoSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoSearchStateImplCopyWith<_$TodoSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
