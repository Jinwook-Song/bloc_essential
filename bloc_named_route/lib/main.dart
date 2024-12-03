import 'package:bloc_named_route/count.dart';
import 'package:bloc_named_route/cubit/count/count_cubit.dart';
import 'package:bloc_named_route/home.dart';
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
      title: 'Named Route',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => BlocProvider.value(
              value: _countCubit,
              child: const HomeScreen(),
            ),
        '/count': (context) => BlocProvider.value(
              value: _countCubit,
              child: const CountScreen(),
            ),
      },
    );
  }
}
