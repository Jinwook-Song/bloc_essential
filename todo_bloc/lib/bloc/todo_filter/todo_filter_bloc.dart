import 'package:bloc/bloc.dart';
import 'package:todo_bloc/bloc/todo_filter/todo_filter.dart';
import 'package:todo_bloc/model/model.dart';

part 'todo_filter_event.dart';

class TodoFilterBloc extends Bloc<TodoFilterEvent, TodoFilterState> {
  TodoFilterBloc() : super(TodoFilterState()) {
    on<ChangeTodoFilterEvent>((event, emit) {
      emit(state.copyWith(filter: event.filter));
    });
  }
}
