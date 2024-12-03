import 'package:bloc_2_bloc_observer/bloc/color/color_bloc.dart';
import 'package:bloc_2_bloc_observer/bloc/count/count_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ColorBloc(),
        ),
        BlocProvider(
          create: (context) => CountBloc(context.read<ColorBloc>()),
        ),
      ],
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ColorBloc>().state.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.read<ColorBloc>().add(ChangeColorEvent());
                },
                child: const Text("Change Color")),
            const SizedBox(height: 40),
            Text(
              "${context.watch<CountBloc>().state.count}",
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  context.read<CountBloc>().add(ChangeCountEvent());
                },
                child: const Text("Change Count")),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
