// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      main: Temp.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      country: json['country'] as String,
      name: json['name'] as String,
      updatedAt:
          msToDateTimeDefaultToday((json['updated_at'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'main': instance.main.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'country': instance.country,
      'name': instance.name,
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$WeatherPropsImpl _$$WeatherPropsImplFromJson(Map<String, dynamic> json) =>
    _$WeatherPropsImpl(
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$WeatherPropsImplToJson(_$WeatherPropsImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'icon': instance.icon,
    };

_$TempImpl _$$TempImplFromJson(Map<String, dynamic> json) => _$TempImpl(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$TempImplToJson(_$TempImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };
