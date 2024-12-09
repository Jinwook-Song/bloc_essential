// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherStateImpl _$$WeatherStateImplFromJson(Map<String, dynamic> json) =>
    _$WeatherStateImpl(
      status: $enumDecode(_$WeatherStatusEnumMap, json['status']),
      weather: Weather.fromJson(json['weather'] as Map<String, dynamic>),
      error: CustomError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherStateImplToJson(_$WeatherStateImpl instance) =>
    <String, dynamic>{
      'status': _$WeatherStatusEnumMap[instance.status]!,
      'weather': instance.weather,
      'error': instance.error,
    };

const _$WeatherStatusEnumMap = {
  WeatherStatus.initial: 'initial',
  WeatherStatus.loading: 'loading',
  WeatherStatus.loaded: 'loaded',
  WeatherStatus.error: 'error',
};
