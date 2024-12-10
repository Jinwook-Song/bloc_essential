// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupStateImpl _$$SignupStateImplFromJson(Map<String, dynamic> json) =>
    _$SignupStateImpl(
      status: $enumDecode(_$SignupStatusEnumMap, json['status']),
      customError:
          CustomError.fromJson(json['customError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignupStateImplToJson(_$SignupStateImpl instance) =>
    <String, dynamic>{
      'status': _$SignupStatusEnumMap[instance.status]!,
      'customError': instance.customError,
    };

const _$SignupStatusEnumMap = {
  SignupStatus.initial: 'initial',
  SignupStatus.loading: 'loading',
  SignupStatus.success: 'success',
  SignupStatus.failure: 'failure',
};
