import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit_listener/cubit/cubit.dart';
import 'package:todo_cubit_listener/view/widget/create_todo.dart';
import 'package:todo_cubit_listener/view/widget/search_and_filter_todo.dart';
import 'package:todo_cubit_listener/view/widget/todo_header.dart';
import 'package:todo_cubit_listener/view/widget/todo_list.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoFilterCubit>(create: (context) => TodoFilterCubit()),
        BlocProvider<TodoSearchCubit>(create: (context) => TodoSearchCubit()),
        BlocProvider<TodoListCubit>(create: (context) => TodoListCubit()),
        BlocProvider<ActiveTodoCountCubit>(
          create: (context) => ActiveTodoCountCubit(
            initialActiveTodoCount:
                context.read<TodoListCubit>().state.todoList.length,
            todoListCubit: BlocProvider.of<TodoListCubit>(context),
          ),
        ),
        BlocProvider(
          create: (context) => FilteredTodoListCubit(
            initialTodoList: context.read<TodoListCubit>().state.todoList,
            todoFilterCubit: BlocProvider.of<TodoFilterCubit>(context),
            todoSearchCubit: BlocProvider.of<TodoSearchCubit>(context),
            todoListCubit: BlocProvider.of<TodoListCubit>(context),
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
