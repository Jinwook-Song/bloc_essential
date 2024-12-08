// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filtered_todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilteredTodoListState _$FilteredTodoListStateFromJson(
    Map<String, dynamic> json) {
  return _FilteredTodoListState.fromJson(json);
}

/// @nodoc
mixin _$FilteredTodoListState {
  List<Todo> get filteredTodoList => throw _privateConstructorUsedError;

  /// Serializes this FilteredTodoListState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilteredTodoListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilteredTodoListStateCopyWith<FilteredTodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilteredTodoListStateCopyWith<$Res> {
  factory $FilteredTodoListStateCopyWith(FilteredTodoListState value,
          $Res Function(FilteredTodoListState) then) =
      _$FilteredTodoListStateCopyWithImpl<$Res, FilteredTodoListState>;
  @useResult
  $Res call({List<Todo> filteredTodoList});
}

/// @nodoc
class _$FilteredTodoListStateCopyWithImpl<$Res,
        $Val extends FilteredTodoListState>
    implements $FilteredTodoListStateCopyWith<$Res> {
  _$FilteredTodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilteredTodoListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredTodoList = null,
  }) {
    return _then(_value.copyWith(
      filteredTodoList: null == filteredTodoList
          ? _value.filteredTodoList
          : filteredTodoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilteredTodoListStateImplCopyWith<$Res>
    implements $FilteredTodoListStateCopyWith<$Res> {
  factory _$$FilteredTodoListStateImplCopyWith(
          _$FilteredTodoListStateImpl value,
          $Res Function(_$FilteredTodoListStateImpl) then) =
      __$$FilteredTodoListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> filteredTodoList});
}

/// @nodoc
class __$$FilteredTodoListStateImplCopyWithImpl<$Res>
    extends _$FilteredTodoListStateCopyWithImpl<$Res,
        _$FilteredTodoListStateImpl>
    implements _$$FilteredTodoListStateImplCopyWith<$Res> {
  __$$FilteredTodoListStateImplCopyWithImpl(_$FilteredTodoListStateImpl _value,
      $Res Function(_$FilteredTodoListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilteredTodoListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredTodoList = null,
  }) {
    return _then(_$FilteredTodoListStateImpl(
      filteredTodoList: null == filteredTodoList
          ? _value._filteredTodoList
          : filteredTodoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilteredTodoListStateImpl implements _FilteredTodoListState {
  const _$FilteredTodoListStateImpl(
      {final List<Todo> filteredTodoList = const []})
      : _filteredTodoList = filteredTodoList;

  factory _$FilteredTodoListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilteredTodoListStateImplFromJson(json);

  final List<Todo> _filteredTodoList;
  @override
  @JsonKey()
  List<Todo> get filteredTodoList {
    if (_filteredTodoList is EqualUnmodifiableListView)
      return _filteredTodoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTodoList);
  }

  @override
  String toString() {
    return 'FilteredTodoListState(filteredTodoList: $filteredTodoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredTodoListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._filteredTodoList, _filteredTodoList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_filteredTodoList));

  /// Create a copy of FilteredTodoListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredTodoListStateImplCopyWith<_$FilteredTodoListStateImpl>
      get copyWith => __$$FilteredTodoListStateImplCopyWithImpl<
          _$FilteredTodoListStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilteredTodoListStateImplToJson(
      this,
    );
  }
}

abstract class _FilteredTodoListState implements FilteredTodoListState {
  const factory _FilteredTodoListState({final List<Todo> filteredTodoList}) =
      _$FilteredTodoListStateImpl;

  factory _FilteredTodoListState.fromJson(Map<String, dynamic> json) =
      _$FilteredTodoListStateImpl.fromJson;

  @override
  List<Todo> get filteredTodoList;

  /// Create a copy of FilteredTodoListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilteredTodoListStateImplCopyWith<_$FilteredTodoListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
