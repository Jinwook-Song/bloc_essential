// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninState _$SigninStateFromJson(Map<String, dynamic> json) {
  return _SigninState.fromJson(json);
}

/// @nodoc
mixin _$SigninState {
  SigninStatus get status => throw _privateConstructorUsedError;
  CustomError get customError => throw _privateConstructorUsedError;

  /// Serializes this SigninState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call({SigninStatus status, CustomError customError});

  $CustomErrorCopyWith<$Res> get customError;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customError = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SigninStatus,
      customError: null == customError
          ? _value.customError
          : customError // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ) as $Val);
  }

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomErrorCopyWith<$Res> get customError {
    return $CustomErrorCopyWith<$Res>(_value.customError, (value) {
      return _then(_value.copyWith(customError: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SigninStateImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateImplCopyWith(
          _$SigninStateImpl value, $Res Function(_$SigninStateImpl) then) =
      __$$SigninStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SigninStatus status, CustomError customError});

  @override
  $CustomErrorCopyWith<$Res> get customError;
}

/// @nodoc
class __$$SigninStateImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateImpl>
    implements _$$SigninStateImplCopyWith<$Res> {
  __$$SigninStateImplCopyWithImpl(
      _$SigninStateImpl _value, $Res Function(_$SigninStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customError = null,
  }) {
    return _then(_$SigninStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SigninStatus,
      customError: null == customError
          ? _value.customError
          : customError // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninStateImpl implements _SigninState {
  const _$SigninStateImpl({required this.status, required this.customError});

  factory _$SigninStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninStateImplFromJson(json);

  @override
  final SigninStatus status;
  @override
  final CustomError customError;

  @override
  String toString() {
    return 'SigninState(status: $status, customError: $customError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customError, customError) ||
                other.customError == customError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, customError);

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      __$$SigninStateImplCopyWithImpl<_$SigninStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninStateImplToJson(
      this,
    );
  }
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
      {required final SigninStatus status,
      required final CustomError customError}) = _$SigninStateImpl;

  factory _SigninState.fromJson(Map<String, dynamic> json) =
      _$SigninStateImpl.fromJson;

  @override
  SigninStatus get status;
  @override
  CustomError get customError;

  /// Create a copy of SigninState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
