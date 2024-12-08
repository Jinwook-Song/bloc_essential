import 'package:bloc/bloc.dart';
import 'package:todo_cubit_listener/cubit/todo_filter/todo_filter_state.dart';
import 'package:todo_cubit_listener/model/model.dart';

class TodoFilterCubit extends Cubit<TodoFilterState> {
  TodoFilterCubit() : super(const TodoFilterState());

  void changeFilter(Filter filter) {
    emit(state.copyWith(filter: filter));
  }
}
