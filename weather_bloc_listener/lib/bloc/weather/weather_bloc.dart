import 'package:bloc/bloc.dart';
import 'package:weather_bloc_listener/bloc/bloc.dart';
import 'package:weather_bloc_listener/model/model.dart';
import 'package:weather_bloc_listener/repository/repository.dart';

part 'weather_event.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(WeatherState.initial()) {
    on<GetWeatherEvent>(_getWeather);
  }

  Future<void> _getWeather(
    GetWeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(status: WeatherStatus.loading));

    try {
      final Weather weather = await _weatherRepository.getWeather(event.city);
      emit(state.copyWith(
        status: WeatherStatus.loaded,
        weather: weather,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        status: WeatherStatus.error,
        error: e,
      ));
    }
  }
}
