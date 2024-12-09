import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/bloc/bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            title: Text('Temperature units'),
            subtitle: Text('Celsius/Fahrenheit (Default: Celsius)'),
            trailing: Switch.adaptive(
              value: context.watch<TempUnitBloc>().state.tempUnit ==
                  TempUnit.celsius,
              onChanged: (_) {
                context.read<TempUnitBloc>().add(ToggleTempUnitEvent());
              },
            ),
          ),
        ));
  }
}
