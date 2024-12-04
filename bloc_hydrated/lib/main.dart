import 'package:bloc_hydrated/bloc/theme/theme_bloc.dart';
import 'package:bloc_hydrated/bloc/theme/theme_state.dart';
import 'package:bloc_hydrated/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: context.watch<ThemeBloc>().state.appTheme == AppTheme.light
              ? ThemeMode.light
              : ThemeMode.dark,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData.dark(),
          home: const HomeScreen(),
        );
      }),
    );
  }
}
