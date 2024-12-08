import 'package:weather_cubit/exception/exception.dart';
import 'package:weather_cubit/model/model.dart';
import 'package:weather_cubit/service/weather_api_service.dart';

abstract interface class WeatherRepository {
  Future<Weather> getWeather(String city);
}

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService weatherApiService;

  WeatherRepositoryImpl(this.weatherApiService);

  @override
  Future<Weather> getWeather(String city) async {
    try {
      return weatherApiService
          .getDirectGeocoding(city)
          .then(weatherApiService.getWeather);
    } on WeatherException catch (e) {
      throw CustomError(message: e.message);
    } catch (e) {
      throw CustomError(message: e.toString());
    }
  }
}
