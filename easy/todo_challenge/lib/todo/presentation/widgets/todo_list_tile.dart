import 'package:flutter/material.dart';
import 'package:todo_challenge/l10n/app_localizations.dart';
import 'package:todo_challenge/todo/data/models/todo.dart';
import 'package:todo_challenge/todo/presentation/controllers/todo_controller.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({
    required this.todo,
    required this.onDeletePressed,
    super.key,
  });

  final Todo todo;
  final VoidCallback onDeletePressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.text),
      subtitle: Text(
        TodoController.formatTime(dateTime: todo.createdAt),
      ),
      trailing: IconButton(
        key: AppKeys.deleteTodo(todo.id),
        icon: const Icon(Icons.delete_outline),
        tooltip: l10n.deleteTooltip,
        onPressed: onDeletePressed,
      ),
    );
  }
}
