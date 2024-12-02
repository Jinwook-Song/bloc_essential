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
        BlocProvider(
          create: (context) => ColorCubit(),
        ),
        BlocProvider(
          create: (context) => CountCubit(
            colorCubit: context.read<ColorCubit>(),
          ),
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
                onPressed: context.read<CountCubit>().changeCount,
                child: const Text("Change Count")),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
