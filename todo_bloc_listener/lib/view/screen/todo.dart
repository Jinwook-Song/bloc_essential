import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_listener/bloc/bloc.dart';
import 'package:todo_bloc_listener/view/widget/create_todo.dart';
import 'package:todo_bloc_listener/view/widget/search_and_filter_todo.dart';
import 'package:todo_bloc_listener/view/widget/todo_header.dart';
import 'package:todo_bloc_listener/view/widget/todo_list.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoFilterBloc>(create: (context) => TodoFilterBloc()),
        BlocProvider<TodoSearchBloc>(create: (context) => TodoSearchBloc()),
        BlocProvider<TodoListBloc>(create: (context) => TodoListBloc()),
        BlocProvider<ActiveTodoCountBloc>(
          create: (context) => ActiveTodoCountBloc(
            initialActiveTodoCount:
                context.read<TodoListBloc>().state.todoList.length,
            todoListBloc: BlocProvider.of<TodoListBloc>(context),
          ),
        ),
        BlocProvider(
          create: (context) => FilteredTodoListBloc(
            initialTodoList: context.read<TodoListBloc>().state.todoList,
            todoFilterBloc: BlocProvider.of<TodoFilterBloc>(context),
            todoSearchBloc: BlocProvider.of<TodoSearchBloc>(context),
            todoListBloc: BlocProvider.of<TodoListBloc>(context),
          ),
        )
      ],
      child: const TodoScreenView(),
    );
  }
}

class TodoScreenView extends StatelessWidget {
  const TodoScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              TodoHeader(),
              CreateTodo(),
              SizedBox(height: 20),
              SearchAndFilterTodo(),
              TodoList(),
            ],
          ),
        ),
      ),
    );
  }
}
