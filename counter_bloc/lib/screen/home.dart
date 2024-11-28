import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenView();
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'count',
          style: TextStyle(fontSize: 52),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(width: 10.0),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {},
            heroTag: 'increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
