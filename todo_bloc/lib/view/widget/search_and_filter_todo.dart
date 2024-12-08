import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/cubit/cubit.dart';
import 'package:todo_bloc/model/model.dart';
import 'package:todo_bloc/util/util.dart';

class SearchAndFilterTodo extends StatefulWidget {
  const SearchAndFilterTodo({super.key});

  @override
  State<SearchAndFilterTodo> createState() => _SearchAndFilterTodoState();
}

class _SearchAndFilterTodoState extends State<SearchAndFilterTodo> {
  final Debounce _debounce = Debounce(ms: 1000);

  @override
  void dispose() {
    _debounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
              labelText: 'Search todo...',
              border: InputBorder.none,
              filled: true,
              prefix: Icon(Icons.search)),
          onChanged: (String term) {
            _debounce.run(() {
              context.read<TodoSearchCubit>().setSearchTerm(term);
            });
          },
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (Filter filter in Filter.values) FilterButton(filter: filter)
          ],
        )
      ],
    );
  }
}

class FilterButton extends StatelessWidget {
  final Filter filter;
  const FilterButton({super.key, required this.filter});

  @override
  Widget build(BuildContext context) {
    Color textColor = context.watch<TodoFilterCubit>().state.filter == filter
        ? Colors.blue
        : Colors.grey;
    return TextButton(
        onPressed: () {
          context.read<TodoFilterCubit>().changeFilter(filter);
        },
        child: Text(
          filter.name.toCapitalize(),
          style: TextStyle(color: textColor),
        ));
  }
}
