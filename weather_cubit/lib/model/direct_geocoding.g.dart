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
      lng: (json['lng'] as num).toDouble(),
      country:
          (json['country'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DirectGeocodingImplToJson(
        _$DirectGeocodingImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'country': instance.country,
    };
