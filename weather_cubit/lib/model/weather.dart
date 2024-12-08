import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Weather({
    required String description,
    required String icon,
    required double temp,
    required double tempMin,
    required double tempMax,
    required String country,
    required String name,
    required DateTime updatedAt,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  factory Weather.init() {
    return Weather(
      description: '',
      icon: '',
      temp: 100.0,
      tempMin: 100.0,
      tempMax: 100.0,
      country: '',
      name: '',
      updatedAt: DateTime.now(),
    );
  }
}
