import 'package:bloc_payload/bloc/theme/theme_bloc.dart';
import 'package:bloc_payload/bloc/theme/theme_state.dart';
import 'package:bloc_payload/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Event Payload',
          themeMode: ThemeMode.values.firstWhere(
            (mode) =>
                mode.name == context.watch<ThemeBloc>().state.appTheme.name,
            orElse: () => ThemeMode.system,
          ),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData.dark(),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
