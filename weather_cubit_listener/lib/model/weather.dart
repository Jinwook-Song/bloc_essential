import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_cubit_listener/util/util.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Weather({
    required Temp main,
    required List<WeatherProps> weather,
    required String country,
    required String name,
    @JsonKey(fromJson: msToDateTimeDefaultToday) required DateTime updatedAt,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  factory Weather.init() {
    return Weather(
        main: Temp(temp: 100.0, tempMin: 100.0, tempMax: 100.0),
        weather: [WeatherProps(description: '', icon: '')],
        country: '',
        name: '',
        updatedAt: DateTime.now());
  }
}

@freezed
class WeatherProps with _$WeatherProps {
  const factory WeatherProps({
    required String description,
    required String icon,
  }) = _WeatherProps;

  factory WeatherProps.fromJson(Map<String, dynamic> json) =>
      _$WeatherPropsFromJson(json);
}

@freezed
class Temp with _$Temp {
  const Temp._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Temp({
    required double temp,
    required double tempMin,
    required double tempMax,
  }) = _Temp;

  String get tempCelcius => '${temp.toStringAsFixed(2)} ℃';
  String get tempMinCelcius => '${tempMin.toStringAsFixed(2)} ℃';
  String get tempMaxCelcius => '${tempMax.toStringAsFixed(2)} ℃';

  String get tempFahrenheit => '${(temp * (9 / 5) + 32).toStringAsFixed(2)} ℉';
  String get tempMinFahrenheit =>
      '${(tempMin * (9 / 5) + 32).toStringAsFixed(2)} ℉';
  String get tempMaxFahrenheit =>
      '${(tempMax * (9 / 5) + 32).toStringAsFixed(2)} ℉';

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}
