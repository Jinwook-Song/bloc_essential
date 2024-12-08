import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_cubit/cubit/cubit.dart';
import 'package:weather_cubit/model/model.dart';
import 'package:weather_cubit/repository/weather.dart';
import 'package:weather_cubit/service/weather_api_service.dart';
import 'package:http/http.dart' as http;
import 'package:weather_cubit/view/view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<WeatherApiService>(
      create: (context) => WeatherApiServiceImpl(http.Client()),
      child: RepositoryProvider<WeatherRepository>(
        create: (context) => WeatherRepositoryImpl(
          context.read<WeatherApiService>(),
        ),
        child: BlocProvider(
          create: (context) => WeatherCubit(
            context.read<WeatherRepository>(),
          ),
          child: const HomeScreenView(),
        ),
      ),
    );
  }
}

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  String? _city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        actions: [
          IconButton(
            onPressed: () async {
              _city = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );

              if (_city == null) return;
              context.read<WeatherCubit>().getWeather(_city!);
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (context, state) {
          if (state.status == WeatherStatus.error) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text(state.error.message),
                );
              },
            );
          }
        },
        builder: (context, state) {
          final WeatherStatus status = state.status;
          final Weather weather = state.weather;
          final CustomError error = state.error;

          switch (status) {
            case WeatherStatus.initial:
              return Center(
                child: Text(
                  'Select a City',
                  style: TextStyle(fontSize: 20),
                ),
              );
            case WeatherStatus.loading:
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            case WeatherStatus.loaded:
              return Center(
                child: Text(weather.toString()),
              );
            case WeatherStatus.error:
              if (weather.name == '')
                return Center(
                    child: Text(
                  'Select a City',
                  style: TextStyle(fontSize: 20),
                ));

              return Center(
                child: Text('Error: ${error.message}'),
              );
          }
        },
      ),
    );
  }
}
