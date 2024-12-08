import 'package:bloc/bloc.dart';
import 'package:todo_bloc/cubit/todo_filter/todo_filter_state.dart';
import 'package:todo_bloc/model/model.dart';

class TodoFilterCubit extends Cubit<TodoFilterState> {
  TodoFilterCubit() : super(const TodoFilterState());

  void changeFilter(Filter filter) {
    emit(state.copyWith(filter: filter));
  }
}
