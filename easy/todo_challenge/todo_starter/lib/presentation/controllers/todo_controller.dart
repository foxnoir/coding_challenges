import 'package:todo_starter/data/models/todo.dart';

/// Called when the in-memory list changes so the UI can rebuild.
typedef TodoListChanged = void Function();

/// Starter — implement addTodo and deleteTodo.
class TodoController {
  TodoController({this.onListChanged});

  final TodoListChanged? onListChanged;

  final List<Todo> _todos = [];

  List<Todo> get todos => List.unmodifiable(_todos);

  bool get isEmpty => _todos.isEmpty;

  // TODO(starter): Add when text is non-empty after trim.
  // - New Todo with a unique id, insert at index 0.
  // - Call onListChanged when the list changes.
  // - Return true if added (screen clears the text field).
  bool addTodo({required String text}) {
    // Implement me.
    return false;
  }

  // TODO(starter): Remove the to-do with id and call onListChanged.
  void deleteTodo({required String id}) {
    // Implement me.
  }

  static String formatTime({required DateTime dateTime}) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
