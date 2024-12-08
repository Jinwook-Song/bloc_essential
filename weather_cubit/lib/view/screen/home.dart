import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:weather_cubit/repository/weather.dart';
import 'package:weather_cubit/service/weather_api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final http.Client _httpClient = http.Client();
  late final WeatherApiService _weatherApiService =
      WeatherApiServiceImpl(_httpClient);
  late final WeatherRepository _weatherRepository =
      WeatherRepositoryImpl(_weatherApiService);
  @override
  void initState() {
    super.initState();
    _getWeather();
  }

  Future<void> _getWeather() async {
    _weatherRepository.getWeather('London').then(print);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/loading.gif'),
      ),
    );
  }
}
