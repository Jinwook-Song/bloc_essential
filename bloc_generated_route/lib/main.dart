import 'package:bloc_generated_route/count.dart';
import 'package:bloc_generated_route/cubit/count/count_cubit.dart';
import 'package:bloc_generated_route/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CountCubit _countCubit = CountCubit();

  @override
  void dispose() {
    _countCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generated Route',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: _countCubit,
                child: const HomeScreen(),
              ),
            );
          case '/count':
            return MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: _countCubit,
                child: const CountScreen(),
              ),
            );
          default:
            return null;
        }
      },
    );
  }
}
