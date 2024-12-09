import 'package:freezed_annotation/freezed_annotation.dart';

part 'direct_geocoding.freezed.dart';
part 'direct_geocoding.g.dart';

@freezed
class DirectGeocoding with _$DirectGeocoding {
  const factory DirectGeocoding({
    required String name,
    required double lat,
    required double lon,
    required String country,
  }) = _DirectGeocoding;

  factory DirectGeocoding.fromJson(Map<String, dynamic> json) =>
      _$DirectGeocodingFromJson(json);
}
