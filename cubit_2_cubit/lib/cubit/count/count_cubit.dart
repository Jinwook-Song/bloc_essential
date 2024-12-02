import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cubit_2_cubit/cubit/color/color_cubit.dart';
import 'package:cubit_2_cubit/cubit/count/count_state.dart';
import 'package:flutter/material.dart';

class CountCubit extends Cubit<CountState> {
  int incrementSize = 1;
  final ColorCubit colorCubit;
  late final StreamSubscription colorSubscription;

  CountCubit({
    required this.colorCubit,
  }) : super(const CountState()) {
    colorSubscription = colorCubit.stream.listen(
      (event) {
        final color = event.color;
        incrementSize = switch (color) {
          Colors.red => 1,
          Colors.green => 10,
          Colors.blue => 100,
          Colors.black => -100,
          _ => 0,
        };
      },
    );
  }

  void changeCount() {
    emit(state.copyWith(count: state.count + incrementSize));
  }

  @override
  Future<void> close() {
    colorSubscription.cancel();
    return super.close();
  }
}
