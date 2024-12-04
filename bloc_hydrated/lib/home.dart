import 'package:bloc_hydrated/bloc/count/count.dart';
import 'package:bloc_hydrated/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountBloc(),
      child: const HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('${context.watch<CountBloc>().state.count}')),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'theme',
            onPressed: () {
              context.read<ThemeBloc>().add(ToggleThemeEvent());
            },
            child: const Icon(Icons.sunny),
          ),
          FloatingActionButton(
            heroTag: 'plus',
            onPressed: () {
              context.read<CountBloc>().add(IncrementEvent());
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'minus',
            onPressed: () {
              context.read<CountBloc>().add(DecrementEvent());
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            heroTag: 'clear',
            onPressed: () {
              // TODO
            },
            child: const Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),
    );
  }
}
