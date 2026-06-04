import 'package:flutter/material.dart';
import 'package:todo_challenge/models/todo.dart';

/// Single-screen to-do UI — implement the TODOs for the challenge.
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Todo> _todos = [];
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  // TODO(challenge): Add a to-do when text is non-empty.
  // - Generate a unique [Todo.id] (e.g. timestamp-based string).
  // - Insert at index 0 (newest first).
  // - Clear the text field and call setState.
  void _addTodo() {
    // Implement me.
  }

  // TODO(challenge): Remove the to-do with the given [id] and call setState.
  void _deleteTodo(String id) {
    // Implement me.
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    key: const Key('todo-input'),
                    controller: _textController,
                    decoration: const InputDecoration(
                      labelText: 'New to-do',
                      hintText: 'Buy milk, call client, review PR…',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 2,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => _addTodo(),
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton(
                  key: const Key('add-todo-button'),
                  onPressed: _addTodo,
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: _todos.isEmpty
                ? Center(
                    child: Text(
                      'No to-dos yet. Add one above.',
                      key: const Key('empty-state'),
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  )
                : ListView.builder(
                    key: const Key('todo-list'),
                    itemCount: _todos.length,
                    itemBuilder: (context, index) {
                      final todo = _todos[index];
                      return ListTile(
                        title: Text(todo.text),
                        subtitle: Text(_formatTime(todo.createdAt)),
                        trailing: IconButton(
                          key: Key('delete-todo-${todo.id}'),
                          icon: const Icon(Icons.delete_outline),
                          tooltip: 'Delete to-do',
                          onPressed: () => _deleteTodo(todo.id),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
