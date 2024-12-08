import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:weather_cubit/constant/constant.dart';
import 'package:weather_cubit/exception/exception.dart';
import 'package:weather_cubit/main.dart';
import 'package:weather_cubit/model/model.dart';
import 'package:weather_cubit/service/http_error_handler.dart';

abstract interface class WeatherApiService {
  /// city로부터 location 정보 가져오기
  Future<DirectGeocoding> getDirectGeocoding(String city);

  /// location 정보로부터 weather 정보 가져오기
  Future<Weather> getWeather(DirectGeocoding directGeocoding);
}

class WeatherApiServiceImpl implements WeatherApiService {
  final http.Client httpClient;

  WeatherApiServiceImpl(this.httpClient);

  @override
  Future<DirectGeocoding> getDirectGeocoding(String city) async {
    final Uri uri = Uri(
        scheme: 'https',
        host: kApiHost,
        path: '/geo/1.0/direct',
        queryParameters: {
          'q': city,
          'limit': kLimit,
          'appid': dotenv.env[AppEnv.OPEN_WEATHER_API_KEY]
        });

    try {
      final http.Response response = await httpClient.get(uri);
      if (response != 200) throw httpErrorHandler(response);
      final List<dynamic> json = jsonDecode(response.body);

      if (json.isEmpty) {
        throw WeatherException('Cannot get the location of the ${city}');
      }

      return DirectGeocoding.fromJson(json.first);
    } catch (e) {
      // error를 호출한곳에 그대로 전달
      rethrow;
    }
  }

  @override
  Future<Weather> getWeather(DirectGeocoding directGeocoding) async {
    final Uri uri = Uri(
        scheme: 'https',
        host: kApiHost,
        path: '/geo/2.5/weather',
        queryParameters: {
          'lat': directGeocoding.lat,
          'lon': directGeocoding.lon,
          'units': kUnit,
          'appid': dotenv.env[AppEnv.OPEN_WEATHER_API_KEY]
        });

    try {
      final http.Response response = await httpClient.get(uri);
      if (response != 200) throw httpErrorHandler(response);
      final json = jsonDecode(response.body);
      return Weather.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }
}
