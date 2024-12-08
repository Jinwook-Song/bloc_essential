import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_cubit/model/model.dart';

part 'weather_state.freezed.dart';
part 'weather_state.g.dart';

enum WeatherStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required WeatherStatus status,
    required Weather weather,
    required CustomError error,
  }) = _WeatherState;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);

  factory WeatherState.initial() {
    return WeatherState(
      status: WeatherStatus.initial,
      weather: Weather.init(),
      error: CustomError(),
    );
  }
}
