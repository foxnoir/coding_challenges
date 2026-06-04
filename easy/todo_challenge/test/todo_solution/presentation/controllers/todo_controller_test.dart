import 'package:flutter_test/flutter_test.dart';
import 'package:todo_challenge/todo_solution/presentation/controllers/todo_controller.dart';

void main() {
  group('TodoController (solution)', () {
    group('formatTime', () {
      test('formats as HH:mm with zero padding', () {
        expect(
          TodoController.formatTime(dateTime: DateTime(2026, 6, 4, 9, 5)),
          '09:05',
        );
      });
    });

    group('addTodo', () {
      test('adds trimmed text and returns true', () {
        final controller = TodoController();

        final added = controller.addTodo(text: '  Buy milk  ');

        expect(added, isTrue);
        expect(controller.todos.first.text, 'Buy milk');
      });

      test('inserts newest to-do at index 0', () {
        final controller = TodoController()
          ..addTodo(text: 'First')
          ..addTodo(text: 'Second');

        expect(controller.todos.first.text, 'Second');
      });

      test('rejects empty and whitespace-only input', () {
        final controller = TodoController();

        expect(controller.addTodo(text: ''), isFalse);
        expect(controller.addTodo(text: '   '), isFalse);
        expect(controller.todos, isEmpty);
      });

      test('calls onListChanged when a to-do is added', () {
        var callCount = 0;
        TodoController(onListChanged: () => callCount++).addTodo(text: 'Task');

        expect(callCount, 1);
      });
    });

    group('deleteTodo', () {
      test('removes the to-do with the given id', () {
        final controller = TodoController()..addTodo(text: 'Delete me');
        final id = controller.todos.first.id;

        controller.deleteTodo(id: id);

        expect(controller.isEmpty, isTrue);
      });

      test('calls onListChanged when a to-do is removed', () {
        var callCount = 0;
        final controller = TodoController(onListChanged: () => callCount++)
          ..addTodo(text: 'Task');
        final id = controller.todos.first.id;
        callCount = 0;

        controller.deleteTodo(id: id);

        expect(callCount, 1);
      });
    });
  });
}
