import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/bloc/todo_list/todo_list_bloc.dart';

class CreateTodo extends StatefulWidget {
  const CreateTodo({super.key});

  @override
  State<CreateTodo> createState() => _CreateTodoState();
}

class _CreateTodoState extends State<CreateTodo> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      decoration: const InputDecoration(labelText: 'What to do?'),
      onSubmitted: (String todoDesc) {
        if (todoDesc.trim().isEmpty) return;
        context.read<TodoListBloc>().add(AddTodoEvent(desc: todoDesc));
        _textEditingController.clear();
      },
    );
  }
}
