// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListStateImpl _$$TodoListStateImplFromJson(Map<String, dynamic> json) =>
    _$TodoListStateImpl(
      todoList: (json['todoList'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TodoListStateImplToJson(_$TodoListStateImpl instance) =>
    <String, dynamic>{
      'todoList': instance.todoList,
    };
