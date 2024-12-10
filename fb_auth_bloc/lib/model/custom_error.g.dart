// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomErrorImpl _$$CustomErrorImplFromJson(Map<String, dynamic> json) =>
    _$CustomErrorImpl(
      code: json['code'] as String? ?? '',
      message: json['message'] as String? ?? '',
      plugin: json['plugin'] as String? ?? '',
    );

Map<String, dynamic> _$$CustomErrorImplToJson(_$CustomErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'plugin': instance.plugin,
    };
