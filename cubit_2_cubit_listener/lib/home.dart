import 'package:cubit_2_cubit_listener_listener/cubit/color/color_cubit.dart';
import 'package:cubit_2_cubit_listener_listener/cubit/color/color_state.dart';
import 'package:cubit_2_cubit_listener_listener/cubit/count/count_cubit.dart';
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
          create: (context) => CountCubit(),
        ),
      ],
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  int _increamentSize = 1;
  @override
  Widget build(BuildContext context) {
    return BlocListener<ColorCubit, ColorState>(
      listener: (context, state) {
        final color = state.color;
        setState(() {
          _increamentSize = switch (color) {
            Colors.red => 1,
            Colors.green => 10,
            Colors.blue => 100,
            Colors.black => -100,
            _ => 0,
          };
        });
      },
      child: Scaffold(
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
                  onPressed: () =>
                      context.read<CountCubit>().changeCount(_increamentSize),
                  child: const Text("Change Count")),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
