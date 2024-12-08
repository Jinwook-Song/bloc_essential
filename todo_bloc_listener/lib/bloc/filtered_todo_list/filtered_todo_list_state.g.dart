// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_todo_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilteredTodoListStateImpl _$$FilteredTodoListStateImplFromJson(
        Map<String, dynamic> json) =>
    _$FilteredTodoListStateImpl(
      filteredTodoList: (json['filteredTodoList'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FilteredTodoListStateImplToJson(
        _$FilteredTodoListStateImpl instance) =>
    <String, dynamic>{
      'filteredTodoList': instance.filteredTodoList,
    };
