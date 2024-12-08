import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_listener/cubit/cubit.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'TODO',
          style: TextStyle(fontSize: 40),
        ),
        BlocListener<TodoListCubit, TodoListState>(
          listener: (context, state) {
            final int activeTodoCount =
                state.todoList.where((todo) => !todo.completed).length;
            context
                .read<ActiveTodoCountCubit>()
                .calcActiveTodoCount(activeTodoCount);
          },
          child: Text(
            '${context.watch<ActiveTodoCountCubit>().state.count} items left',
            style: const TextStyle(fontSize: 20, color: Colors.redAccent),
          ),
        ),
      ],
    );
  }
}