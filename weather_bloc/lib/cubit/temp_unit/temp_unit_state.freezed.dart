// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_unit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TempUnitState _$TempUnitStateFromJson(Map<String, dynamic> json) {
  return _TempUnitState.fromJson(json);
}

/// @nodoc
mixin _$TempUnitState {
  TempUnit get tempUnit => throw _privateConstructorUsedError;

  /// Serializes this TempUnitState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TempUnitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TempUnitStateCopyWith<TempUnitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempUnitStateCopyWith<$Res> {
  factory $TempUnitStateCopyWith(
          TempUnitState value, $Res Function(TempUnitState) then) =
      _$TempUnitStateCopyWithImpl<$Res, TempUnitState>;
  @useResult
  $Res call({TempUnit tempUnit});
}

/// @nodoc
class _$TempUnitStateCopyWithImpl<$Res, $Val extends TempUnitState>
    implements $TempUnitStateCopyWith<$Res> {
  _$TempUnitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TempUnitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempUnit = null,
  }) {
    return _then(_value.copyWith(
      tempUnit: null == tempUnit
          ? _value.tempUnit
          : tempUnit // ignore: cast_nullable_to_non_nullable
              as TempUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempUnitStateImplCopyWith<$Res>
    implements $TempUnitStateCopyWith<$Res> {
  factory _$$TempUnitStateImplCopyWith(
          _$TempUnitStateImpl value, $Res Function(_$TempUnitStateImpl) then) =
      __$$TempUnitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TempUnit tempUnit});
}

/// @nodoc
class __$$TempUnitStateImplCopyWithImpl<$Res>
    extends _$TempUnitStateCopyWithImpl<$Res, _$TempUnitStateImpl>
    implements _$$TempUnitStateImplCopyWith<$Res> {
  __$$TempUnitStateImplCopyWithImpl(
      _$TempUnitStateImpl _value, $Res Function(_$TempUnitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TempUnitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempUnit = null,
  }) {
    return _then(_$TempUnitStateImpl(
      tempUnit: null == tempUnit
          ? _value.tempUnit
          : tempUnit // ignore: cast_nullable_to_non_nullable
              as TempUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempUnitStateImpl implements _TempUnitState {
  const _$TempUnitStateImpl({this.tempUnit = TempUnit.celsius});

  factory _$TempUnitStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempUnitStateImplFromJson(json);

  @override
  @JsonKey()
  final TempUnit tempUnit;

  @override
  String toString() {
    return 'TempUnitState(tempUnit: $tempUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempUnitStateImpl &&
            (identical(other.tempUnit, tempUnit) ||
                other.tempUnit == tempUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tempUnit);

  /// Create a copy of TempUnitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TempUnitStateImplCopyWith<_$TempUnitStateImpl> get copyWith =>
      __$$TempUnitStateImplCopyWithImpl<_$TempUnitStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempUnitStateImplToJson(
      this,
    );
  }
}

abstract class _TempUnitState implements TempUnitState {
  const factory _TempUnitState({final TempUnit tempUnit}) = _$TempUnitStateImpl;

  factory _TempUnitState.fromJson(Map<String, dynamic> json) =
      _$TempUnitStateImpl.fromJson;

  @override
  TempUnit get tempUnit;

  /// Create a copy of TempUnitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TempUnitStateImplCopyWith<_$TempUnitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
