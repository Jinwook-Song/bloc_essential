import 'package:bloc/bloc.dart';
import 'package:bloc_2_bloc/bloc/color/color_state.dart';
import 'package:flutter/material.dart';

part 'color_event.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(const ColorState()) {
    on<ChangeColorEvent>(_changeColor);
  }

  _changeColor(ChangeColorEvent event, Emitter<ColorState> emit) {
    final Color color = state.color;
    switch (color) {
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
