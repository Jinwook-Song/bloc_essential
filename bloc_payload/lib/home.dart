import 'dart:math';

import 'package:bloc_payload/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Change Theme'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        final randInt = Random().nextInt(10);
        context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: randInt));
      }),
    );
  }
}
