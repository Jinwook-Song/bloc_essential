// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountState _$CountStateFromJson(Map<String, dynamic> json) {
  return _CountState.fromJson(json);
}

/// @nodoc
mixin _$CountState {
  dynamic get count => throw _privateConstructorUsedError;

  /// Serializes this CountState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountStateCopyWith<CountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountStateCopyWith<$Res> {
  factory $CountStateCopyWith(
          CountState value, $Res Function(CountState) then) =
      _$CountStateCopyWithImpl<$Res, CountState>;
  @useResult
  $Res call({dynamic count});
}

/// @nodoc
class _$CountStateCopyWithImpl<$Res, $Val extends CountState>
    implements $CountStateCopyWith<$Res> {
  _$CountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountStateImplCopyWith<$Res>
    implements $CountStateCopyWith<$Res> {
  factory _$$CountStateImplCopyWith(
          _$CountStateImpl value, $Res Function(_$CountStateImpl) then) =
      __$$CountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic count});
}

/// @nodoc
class __$$CountStateImplCopyWithImpl<$Res>
    extends _$CountStateCopyWithImpl<$Res, _$CountStateImpl>
    implements _$$CountStateImplCopyWith<$Res> {
  __$$CountStateImplCopyWithImpl(
      _$CountStateImpl _value, $Res Function(_$CountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$CountStateImpl(
      count: freezed == count ? _value.count! : count,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountStateImpl implements _CountState {
  const _$CountStateImpl({this.count = 0});

  factory _$CountStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountStateImplFromJson(json);

  @override
  @JsonKey()
  final dynamic count;

  @override
  String toString() {
    return 'CountState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountStateImpl &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  /// Create a copy of CountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountStateImplCopyWith<_$CountStateImpl> get copyWith =>
      __$$CountStateImplCopyWithImpl<_$CountStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountStateImplToJson(
      this,
    );
  }
}

abstract class _CountState implements CountState {
  const factory _CountState({final dynamic count}) = _$CountStateImpl;

  factory _CountState.fromJson(Map<String, dynamic> json) =
      _$CountStateImpl.fromJson;

  @override
  dynamic get count;

  /// Create a copy of CountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountStateImplCopyWith<_$CountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
