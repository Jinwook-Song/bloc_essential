import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_2_bloc_observer/bloc/color/color_bloc.dart';
import 'package:bloc_2_bloc_observer/bloc/color/color_state.dart';
import 'package:bloc_2_bloc_observer/bloc/count/count_state.dart';
import 'package:flutter/material.dart';

part 'count_event.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  int _increamentSize = 1;
  final ColorBloc _colorBloc;
  late final StreamSubscription _streamSubscription;

  CountBloc(ColorBloc colorBloc)
      : _colorBloc = colorBloc,
        super(const CountState()) {
    _streamSubscription = _colorBloc.stream.listen((ColorState colorState) {
      final Color color = colorState.color;
      switch (color) {
        case Colors.red:
          _increamentSize = 1;
          break;
        case Colors.green:
          _increamentSize = 10;
          break;
        case Colors.blue:
          _increamentSize = 100;
          break;
        case Colors.black:
          _increamentSize = -100;
          break;
        default:
          break;
      }
    });

    on<ChangeCountEvent>((event, emit) {
      emit(state.copyWith(count: state.count + _increamentSize));
    });
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
