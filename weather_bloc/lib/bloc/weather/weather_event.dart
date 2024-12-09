part of 'weather_bloc.dart';

sealed class WeatherEvent {}

class GetWeatherEvent extends WeatherEvent {
  final String city;

  GetWeatherEvent(this.city);
}
