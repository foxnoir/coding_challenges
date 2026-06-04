import 'package:flutter/material.dart';
import 'package:todo/l10n/app_localizations.dart';
import 'package:todo/presentation/controllers/todo_controller.dart';
import 'package:todo/presentation/widgets/empty_todo_message.dart';
import 'package:todo/presentation/widgets/todo_input_row.dart';
import 'package:todo/presentation/widgets/todo_list.dart';

/// Solution screen — UI only; logic in [TodoController].
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late final TodoController _controller;
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _controller = TodoController(onListChanged: () => setState(() {}));
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _onAddPressed() {
    final added = _controller.addTodo(text: _textController.text);
    if (added) {
      _textController.clear();
    }
  }

  void _onDeletePressed({required String id}) {
    _controller.deleteTodo(id: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(l10n.screenTitle)),
      body: Column(
        children: [
          TodoInputRow(
            textController: _textController,
            onAddPressed: _onAddPressed,
          ),
          const Divider(height: 1),
          Expanded(
            child: _controller.isEmpty
                ? const EmptyTodoMessage()
                : TodoList(
                    todos: _controller.todos,
                    onDeletePressed: _onDeletePressed,
                  ),
          ),
        ],
      ),
    );
  }
}
