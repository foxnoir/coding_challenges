import 'package:todo_challenge/todo_solution/data/models/todo.dart';

/// Called when the in-memory list changes so the UI can rebuild.
typedef TodoListChanged = void Function();

/// Reference solution — presentation logic for the to-do list.
class TodoController {
  TodoController({this.onListChanged});

  final TodoListChanged? onListChanged;

  final List<Todo> _todos = [];

  List<Todo> get todos => List.unmodifiable(_todos);

  bool get isEmpty => _todos.isEmpty;

  bool addTodo({required String text}) {
    final trimmed = text.trim();
    if (trimmed.isEmpty) {
      return false;
    }

    _todos.insert(
      0,
      Todo(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        text: trimmed,
        createdAt: DateTime.now(),
      ),
    );
    onListChanged?.call();
    return true;
  }

  void deleteTodo({required String id}) {
    final lengthBefore = _todos.length;
    _todos.removeWhere((todo) => todo.id == id);
    if (_todos.length != lengthBefore) {
      onListChanged?.call();
    }
  }

  static String formatTime({required DateTime dateTime}) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
