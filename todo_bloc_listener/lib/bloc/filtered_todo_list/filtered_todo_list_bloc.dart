import 'package:bloc/bloc.dart';
import 'package:todo_bloc_listener/bloc/bloc.dart';
import 'package:todo_bloc_listener/model/model.dart';

part 'filtered_todo_list_event.dart';

class FilteredTodoListBloc
    extends Bloc<FilteredTodoListEvent, FilteredTodoListState> {
  final List<Todo> initialTodoList;

  FilteredTodoListBloc({
    required this.initialTodoList,
  }) : super(FilteredTodoListState(filteredTodoList: initialTodoList)) {
    on<CalcFilteredTodoListEvent>(
      (event, emit) {
        emit(state.copyWith(filteredTodoList: event.filteredTodoList));
      },
    );
  }
}
