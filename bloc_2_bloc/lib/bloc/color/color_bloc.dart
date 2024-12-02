import 'package:bloc/bloc.dart';
import 'package:bloc_2_bloc/bloc/color/color_state.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(const ColorState()) {
    on<ColorEvent>((event, emit) {});
  }
}
