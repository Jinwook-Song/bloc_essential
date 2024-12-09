import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc_listener/bloc/bloc.dart';
import 'package:weather_bloc_listener/constant/constant.dart';
import 'package:weather_bloc_listener/repository/weather.dart';
import 'package:weather_bloc_listener/service/weather_api_service.dart';
import 'package:weather_bloc_listener/view/view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

enum AppEnv { OPEN_WEATHER_API_KEY }

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<WeatherApiService>(
      create: (context) => WeatherApiServiceImpl(http.Client()),
      child: RepositoryProvider<WeatherRepository>(
        create: (context) =>
            WeatherRepositoryImpl(context.read<WeatherApiService>()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => WeatherBloc(
                context.read<WeatherRepository>(),
              ),
            ),
            BlocProvider(
              create: (context) => TempUnitBloc(),
            ),
            BlocProvider(
              create: (context) => ThemeBloc(),
            ),
          ],
          child: BlocListener<WeatherBloc, WeatherState>(
            listener: (context, state) {
              if (state.weather.main.temp > kIsWarm) {
                context.read<ThemeBloc>().add(SetThemeEvent(AppTheme.light));
              } else {
                context.read<ThemeBloc>().add(SetThemeEvent(AppTheme.dark));
              }
            },
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return MaterialApp(
                  title: 'Weather',
                  themeMode: state.appTheme == AppTheme.light
                      ? ThemeMode.light
                      : ThemeMode.dark,
                  theme: ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  darkTheme: ThemeData.dark(),
                  home: HomeScreen(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
