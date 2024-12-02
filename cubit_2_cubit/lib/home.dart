import 'package:cubit_2_cubit/cubit/color/color_cubit.dart';
import 'package:cubit_2_cubit/cubit/count/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorCubit>(
          create: (context) => ColorCubit(),
        ),
        BlocProvider<CountCubit>(
          create: (context) => CountCubit(),
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
      backgroundColor: context.watch<ColorCubit>().state.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: context.read<ColorCubit>().changeColor,
                child: const Text("Change Color")),
            const SizedBox(height: 40),
            Text(
              context.watch<CountCubit>().state.count.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  final Color color = context.read<ColorCubit>().state.color;
                  final int value = switch (color) {
                    Colors.red => 1,
                    Colors.green => 10,
                    Colors.blue => 100,
                    Colors.black => -100,
                    Color() => throw UnimplementedError(),
                  };
                  context.read<CountCubit>().changeCount(value);
                },
                child: const Text("Change Count")),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
