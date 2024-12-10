// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      profileImage: json['profileImage'] as String? ?? '',
      point: (json['point'] as num?)?.toInt() ?? -1,
      rank: json['rank'] as String? ?? '',
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profileImage': instance.profileImage,
      'point': instance.point,
      'rank': instance.rank,
    };
