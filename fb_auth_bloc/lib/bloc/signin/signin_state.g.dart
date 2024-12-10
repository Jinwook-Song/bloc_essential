// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninStateImpl _$$SigninStateImplFromJson(Map<String, dynamic> json) =>
    _$SigninStateImpl(
      status: $enumDecode(_$SigninStatusEnumMap, json['status']),
      customError:
          CustomError.fromJson(json['customError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SigninStateImplToJson(_$SigninStateImpl instance) =>
    <String, dynamic>{
      'status': _$SigninStatusEnumMap[instance.status]!,
      'customError': instance.customError,
    };

const _$SigninStatusEnumMap = {
  SigninStatus.initial: 'initial',
  SigninStatus.loading: 'loading',
  SigninStatus.success: 'success',
  SigninStatus.failure: 'failure',
};
