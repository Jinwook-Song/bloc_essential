import 'package:counter_cubit/cubits/cubits.dart';
import 'package:counter_cubit/screen/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          final int count = state.count;
          if (count == 3) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text('count is $count'),
              ),
            );
          } else if (count == -1) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const OtherScreen(),
            ));
          }
        },
        builder: (context, state) {
          return BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Center(
                child: Text(
                  state.count.toString(),
                  style: const TextStyle(fontSize: 52),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: BlocProvider.of<CounterCubit>(context).decrement,
            heroTag: 'decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: BlocProvider.of<CounterCubit>(context).increament,
            heroTag: 'increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
