import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

enum Filter {
  all,
  active,
  completed,
}

const Uuid uuid = Uuid();

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String desc,
    required bool completed,
  }) = _Todo;

  factory Todo.init({
    required String desc,
  }) {
    return Todo(
      id: uuid.v4(),
      desc: desc,
      completed: false,
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
