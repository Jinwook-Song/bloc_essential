import 'package:bloc_anonymous_route/cubit/count/count_cubit.dart';
import 'package:bloc_anonymous_route/cubit/count/count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocBuilder<CountCubit, CountState>(
          builder: (context, state) {
            return Text("${context.watch<CountCubit>().state.count}");
          },
        ),
      ),
    );
  }
}
