import 'package:bloc_generated_route/count.dart';
import 'package:bloc_generated_route/cubit/count/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => BlocProvider<CountCubit>.value(
                      value: context.read<CountCubit>(),
                      child: const CountScreen(),
                    ),
                  ));
                },
                child: const Text("Count Page")),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: context.read<CountCubit>().increment,
                child: const Text("Increament")),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
