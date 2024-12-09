import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:weather_bloc_listener/bloc/bloc.dart';
import 'package:weather_bloc_listener/model/model.dart';
import 'package:weather_bloc_listener/view/view.dart';
import 'package:weather_bloc_listener/view/widget/weather_icon.dart';
import 'package:recase/recase.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              context.read<WeatherBloc>().add(GetWeatherEvent(_city!));
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocConsumer<WeatherBloc, WeatherState>(
        listener: (context, state) {
          if (state.status == WeatherStatus.error) {
            errorDialog(context, state.error.message);
          }
        },
        builder: (context, state) {
          final WeatherStatus status = state.status;
          final Weather weather = state.weather;
          final WeatherProps weatherProps = weather.weather.first;
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
            case WeatherStatus.loaded:
              return BlocBuilder<TempUnitBloc, TempUnitState>(
                builder: (context, state) {
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      Gap(MediaQuery.of(context).size.height / 6),
                      Text(
                        weather.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            TimeOfDay.fromDateTime(weather.updatedAt)
                                .format(context),
                            style: TextStyle(fontSize: 18),
                          ),
                          Gap(10),
                          Text(
                            "(${weather.country})",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      Gap(60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.tempUnit == TempUnit.celsius
                                ? weather.main.tempCelcius
                                : weather.main.tempFahrenheit,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(20),
                          Column(
                            children: [
                              Text(
                                state.tempUnit == TempUnit.celsius
                                    ? weather.main.tempMaxCelcius
                                    : weather.main.tempMaxFahrenheit,
                                style: TextStyle(fontSize: 16),
                              ),
                              Gap(10),
                              Text(
                                state.tempUnit == TempUnit.celsius
                                    ? weather.main.tempMinCelcius
                                    : weather.main.tempMinFahrenheit,
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          WeatherIcon(weatherProps.icon),
                          Expanded(
                            flex: 3,
                            child: Text(
                              weatherProps.description.titleCase,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      )
                    ],
                  );
                },
              );
          }
        },
      ),
    );
  }
}
