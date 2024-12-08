import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_listener/bloc/bloc.dart';
import 'package:todo_bloc_listener/model/model.dart';
import 'package:todo_bloc_listener/view/widget/todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Todo> todos =
        context.watch<FilteredTodoListBloc>().state.filteredTodoList;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: todos.length,
      separatorBuilder: (context, index) => const Divider(
        color: Colors.grey,
        height: 0,
      ),
      itemBuilder: (context, index) {
        final Todo todo = todos[index];
        return Dismissible(
            key: ValueKey(todo.id),
            onDismissed: (_) =>
                context.read<TodoListBloc>().add(DeleteTodoEvent(id: todo.id)),
            confirmDismiss: (_) => _confirmDismissDialog(context),
            background: const DissmissBackground(left: true),
            secondaryBackground: const DissmissBackground(left: false),
            child: TodoItem(todo));
      },
    );
  }

  Future<bool?> _confirmDismissDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Todo'),
          content: const Text('Are you sure you want to delete this todo?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}

class DissmissBackground extends StatelessWidget {
  final bool left;
  const DissmissBackground({super.key, required this.left});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      color: Colors.red,
      alignment: left ? Alignment.centerLeft : Alignment.centerRight,
      child: const Icon(
        Icons.delete,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
