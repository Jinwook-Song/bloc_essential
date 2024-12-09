// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectGeocodingImpl _$$DirectGeocodingImplFromJson(
        Map<String, dynamic> json) =>
    _$DirectGeocodingImpl(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      country: json['country'] as String,
    );

Map<String, dynamic> _$$DirectGeocodingImplToJson(
        _$DirectGeocodingImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'country': instance.country,
    };
