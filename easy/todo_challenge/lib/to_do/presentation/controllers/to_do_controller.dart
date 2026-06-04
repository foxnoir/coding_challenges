import 'package:todo_challenge/to_do/data/models/todo.dart';

/// Called when the in-memory list changes so the UI can rebuild.
typedef TodoListChanged = void Function();

/// Presentation logic for the to-do list (no Riverpod/Bloc — plain Dart).
///
/// Owns in-memory state and rules; the screen widget only builds UI and
/// registers [onListChanged] to rebuild after mutations.
class TodoController {
  TodoController({this.onListChanged});

  final TodoListChanged? onListChanged;

  final List<Todo> _todos = [];

  /// Read-only view for the UI (newest first).
  List<Todo> get todos => List.unmodifiable(_todos);

  bool get isEmpty => _todos.isEmpty;

  bool addTodo({required String newTodo}) {
    final text = newTodo.trim();
    if (text.isEmpty) {
      return false;
    }

    _todos.insert(
      0,
      Todo(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        text: text,
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

  /// Formats [dateTime] as local HH:mm.
  static String formatTime({required DateTime dateTime}) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
