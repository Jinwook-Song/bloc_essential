import 'package:bloc/bloc.dart';
import 'package:todo_bloc/cubit/todo_filter/todo_filter_state.dart';
import 'package:todo_bloc/model/model.dart';

part 'todo_filter_event.dart';

class TodoFilterBloc extends Bloc<TodoFilterEvent, TodoFilterState> {
  TodoFilterBloc() : super(TodoFilterState()) {
    on<ChangeTodoFilterEvent>((event, emit) {
      emit(state.copyWith(filter: event.filter));
    });
  }
}
