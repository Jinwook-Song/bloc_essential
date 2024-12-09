import 'package:bloc/bloc.dart';
import 'package:weather_bloc/cubit/weather/weather_state.dart';
import 'package:weather_bloc/model/model.dart';
import 'package:weather_bloc/repository/repository.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherCubit(this._weatherRepository) : super(WeatherState.initial());

  Future<void> getWeather(String city) async {
    emit(state.copyWith(status: WeatherStatus.loading));

    try {
      final Weather weather = await _weatherRepository.getWeather(city);
      emit(state.copyWith(
        status: WeatherStatus.loaded,
        weather: weather,
      ));
      print(weather);
    } on CustomError catch (e) {
      emit(state.copyWith(
        status: WeatherStatus.error,
        error: e,
      ));
    }
  }
}
