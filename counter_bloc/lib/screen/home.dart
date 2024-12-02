import 'package:counter_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_bloc/bloc/counter/counter_state.dart';
import 'package:counter_bloc/screen/other.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: BlocListener<CounterBloc, CounterState>(
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
        child: const HomeScreenView(),
      ),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.watch<CounterBloc>().state.count.toString(),
          style: const TextStyle(fontSize: 52),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterBloc>(context)
                  .add(DecreamentCounterEvent());
            },
            heroTag: 'decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncreamentCounterEvent());
            },
            heroTag: 'increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
