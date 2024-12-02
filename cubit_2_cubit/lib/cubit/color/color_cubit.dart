import 'package:bloc/bloc.dart';
import 'package:cubit_2_cubit/cubit/color/color_state.dart';
import 'package:flutter/material.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(const ColorState());

  void changeColor() {
    switch (state.color) {
      case Colors.red:
        emit(state.copyWith(color: Colors.green));
        break;
      case Colors.green:
        emit(state.copyWith(color: Colors.blue));
        break;
      case Colors.blue:
        emit(state.copyWith(color: Colors.black));
        break;
      case Colors.black:
        emit(state.copyWith(color: Colors.red));
        break;
    }
  }
}
