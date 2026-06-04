import 'package:flutter/material.dart';
import 'package:todo_challenge/l10n/app_localizations.dart';
import 'package:todo_challenge/todo/data/models/todo.dart';
import 'package:todo_challenge/todo/presentation/widgets/todo_list_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    required this.todos,
    required this.onDeletePressed,
    super.key,
  });

  final List<Todo> todos;
  final void Function({required String id}) onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: AppKeys.todoList,
      itemCount: todos.length,
      itemBuilder: (context, index) {
        final todo = todos[index];
        return TodoListTile(
          todo: todo,
          onDeletePressed: () => onDeletePressed(id: todo.id),
        );
      },
    );
  }
}
