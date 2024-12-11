// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileStateImpl _$$ProfileStateImplFromJson(Map<String, dynamic> json) =>
    _$ProfileStateImpl(
      status: $enumDecode(_$ProfileStatusEnumMap, json['status']),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      error: CustomError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileStateImplToJson(_$ProfileStateImpl instance) =>
    <String, dynamic>{
      'status': _$ProfileStatusEnumMap[instance.status]!,
      'user': instance.user,
      'error': instance.error,
    };

const _$ProfileStatusEnumMap = {
  ProfileStatus.initial: 'initial',
  ProfileStatus.loading: 'loading',
  ProfileStatus.success: 'success',
  ProfileStatus.failure: 'failure',
};
