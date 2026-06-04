import 'package:flutter_test/flutter_test.dart';
import 'package:todo_challenge/to_do/presentation/controllers/to_do_controller.dart';

void main() {
  group('TodoController', () {
    group('formatTime', () {
      test('formats as HH:mm with zero padding', () {
        expect(
          TodoController.formatTime(dateTime: DateTime(2026, 6, 4, 9, 5)),
          '09:05',
        );
      });

      test('formats afternoon times', () {
        expect(
          TodoController.formatTime(dateTime: DateTime(2026, 6, 4, 14, 30)),
          '14:30',
        );
      });
    });

    group('initial state', () {
      test('starts empty', () {
        final controller = TodoController();

        expect(controller.isEmpty, isTrue);
        expect(controller.todos, isEmpty);
      });

      test('todos returns an unmodifiable list', () {
        final controller = TodoController()..addTodo(newTodo: 'Read docs');
        final todos = controller.todos;

        expect(() => todos.add(todos.first), throwsUnsupportedError);
      });
    });

    group('addTodo', () {
      test('adds trimmed text and returns true', () {
        final controller = TodoController();
        final added = controller.addTodo(newTodo: '  Buy milk  ');
        final todos = controller.todos;

        expect(added, isTrue);
        expect(controller.isEmpty, isFalse);
        expect(todos, hasLength(1));
        expect(todos.first.text, 'Buy milk');
        expect(todos.first.id, isNotEmpty);
      });

      test('inserts newest to-do at index 0', () {
        final controller = TodoController()
          ..addTodo(newTodo: 'First')
          ..addTodo(newTodo: 'Second');
        final todos = controller.todos;

        expect(todos.first.text, 'Second');
        expect(todos.last.text, 'First');
      });

      test('rejects empty and whitespace-only input', () {
        final controller = TodoController();

        expect(controller.addTodo(newTodo: ''), isFalse);
        expect(controller.addTodo(newTodo: '   '), isFalse);
        expect(controller.todos, isEmpty);
      });

      test('calls onListChanged when a to-do is added', () {
        var callCount = 0;
        TodoController(
          onListChanged: () => callCount++,
        ).addTodo(newTodo: '   ');

        expect(callCount, 0);
      });

      test('does not call onListChanged when add is rejected', () {
        var callCount = 0;
        TodoController(
          onListChanged: () => callCount++,
        ).addTodo(newTodo: '   ');

        expect(callCount, 0);
      });
    });

    group('deleteTodo', () {
      test('removes the to-do with the given id', () {
        final controller = TodoController()..addTodo(newTodo: 'Delete me');
        final id = controller.todos.first.id;

        controller.deleteTodo(id: id);

        expect(controller.isEmpty, isTrue);
        expect(controller.todos, isEmpty);
      });

      test('calls onListChanged when a to-do is removed', () {
        var callCount = 0;
        final controller = TodoController(onListChanged: () => callCount++)
          ..addTodo(newTodo: 'Task');
        final id = controller.todos.first.id;
        callCount = 0;

        controller.deleteTodo(id: id);

        expect(callCount, 1);
      });

      test('does nothing when id is not found', () {
        var callCount = 0;
        final controller = TodoController(onListChanged: () => callCount++)
          ..addTodo(newTodo: 'Keep me');
        callCount = 0;

        controller.deleteTodo(id: 'unknown-id');

        expect(controller.todos, hasLength(1));
        expect(callCount, 0);
      });
    });
  });
}
