// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignupState _$SignupStateFromJson(Map<String, dynamic> json) {
  return _SignupState.fromJson(json);
}

/// @nodoc
mixin _$SignupState {
  SignupStatus get status => throw _privateConstructorUsedError;
  CustomError get customError => throw _privateConstructorUsedError;

  /// Serializes this SignupState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call({SignupStatus status, CustomError customError});

  $CustomErrorCopyWith<$Res> get customError;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
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
              as SignupStatus,
      customError: null == customError
          ? _value.customError
          : customError // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ) as $Val);
  }

  /// Create a copy of SignupState
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
abstract class _$$SignupStateImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateImplCopyWith(
          _$SignupStateImpl value, $Res Function(_$SignupStateImpl) then) =
      __$$SignupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignupStatus status, CustomError customError});

  @override
  $CustomErrorCopyWith<$Res> get customError;
}

/// @nodoc
class __$$SignupStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateImpl>
    implements _$$SignupStateImplCopyWith<$Res> {
  __$$SignupStateImplCopyWithImpl(
      _$SignupStateImpl _value, $Res Function(_$SignupStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? customError = null,
  }) {
    return _then(_$SignupStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignupStatus,
      customError: null == customError
          ? _value.customError
          : customError // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupStateImpl implements _SignupState {
  const _$SignupStateImpl({required this.status, required this.customError});

  factory _$SignupStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupStateImplFromJson(json);

  @override
  final SignupStatus status;
  @override
  final CustomError customError;

  @override
  String toString() {
    return 'SignupState(status: $status, customError: $customError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customError, customError) ||
                other.customError == customError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, customError);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      __$$SignupStateImplCopyWithImpl<_$SignupStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupStateImplToJson(
      this,
    );
  }
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final SignupStatus status,
      required final CustomError customError}) = _$SignupStateImpl;

  factory _SignupState.fromJson(Map<String, dynamic> json) =
      _$SignupStateImpl.fromJson;

  @override
  SignupStatus get status;
  @override
  CustomError get customError;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
