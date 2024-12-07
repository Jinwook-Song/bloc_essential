import 'package:flutter/material.dart';
import 'package:todo_cubit/cubit/cubit.dart';
import 'package:todo_cubit/model/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoItem extends StatefulWidget {
  final Todo todo;
  const TodoItem(this.todo, {super.key});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) {
            bool error = false;
            _textEditingController.text = widget.todo.desc;
            return StatefulBuilder(
              builder: (statefulContext, setState) {
                return AlertDialog(
                  title: const Text('Edit todo'),
                  content: TextField(
                    controller: _textEditingController,
                    autofocus: true,
                    decoration: InputDecoration(
                      errorText: error ? "Value cannot be empty" : null,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: const Text('CANCEL'),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          final updateDesc = _textEditingController.text;
                          if (updateDesc.isEmpty) {
                            error = true;
                            return;
                          }
                          context
                              .read<TodoListCubit>()
                              .editTodo(widget.todo.id, updateDesc);
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text('EDIT'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      leading: Checkbox(
        value: widget.todo.completed,
        onChanged: (_) {
          context.read<TodoListCubit>().toggleTodo(widget.todo.id);
        },
      ),
      title: Text(widget.todo.desc),
    );
  }
}
