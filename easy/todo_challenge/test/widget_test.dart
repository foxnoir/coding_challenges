import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_challenge/main.dart';

void main() {
  testWidgets('shows title and empty state', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoChallengeApp());

    expect(find.text('To-Do'), findsOneWidget);
    expect(find.byKey(const Key('empty-state')), findsOneWidget);
    expect(find.byKey(const Key('todo-list')), findsNothing);
  });

  testWidgets('adds a to-do and shows it newest first', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoChallengeApp());

    await tester.enterText(find.byKey(const Key('todo-input')), 'Ship feature X');
    await tester.tap(find.byKey(const Key('add-todo-button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('empty-state')), findsNothing);
    expect(find.text('Ship feature X'), findsOneWidget);
    expect(find.byKey(const Key('todo-list')), findsOneWidget);
  });

  testWidgets('does not add empty or whitespace-only to-dos', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TodoChallengeApp());

    await tester.tap(find.byKey(const Key('add-todo-button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('empty-state')), findsOneWidget);

    await tester.enterText(find.byKey(const Key('todo-input')), '   ');
    await tester.tap(find.byKey(const Key('add-todo-button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('empty-state')), findsOneWidget);
  });

  testWidgets('deletes a to-do', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoChallengeApp());

    await tester.enterText(find.byKey(const Key('todo-input')), 'Delete me');
    await tester.tap(find.byKey(const Key('add-todo-button')));
    await tester.pumpAndSettle();

    expect(find.text('Delete me'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete_outline));
    await tester.pumpAndSettle();

    expect(find.text('Delete me'), findsNothing);
    expect(find.byKey(const Key('empty-state')), findsOneWidget);
  });
}
