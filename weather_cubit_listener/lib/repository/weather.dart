import 'package:weather_cubit_listener/exception/exception.dart';
import 'package:weather_cubit_listener/model/model.dart';
import 'package:weather_cubit_listener/service/weather_api_service.dart';

abstract interface class WeatherRepository {
  Future<Weather> getWeather(String city);
}

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _weatherApiService;

  WeatherRepositoryImpl(this._weatherApiService);

  @override
  Future<Weather> getWeather(String city) async {
    try {
      final DirectGeocoding geocoding =
          await _weatherApiService.getDirectGeocoding(city);
      final Weather weather = await _weatherApiService.getWeather(geocoding);
      return weather;
    } on WeatherException catch (e) {
      throw CustomError(message: e.message);
    } catch (e) {
      throw CustomError(message: e.toString());
    }
  }
}
