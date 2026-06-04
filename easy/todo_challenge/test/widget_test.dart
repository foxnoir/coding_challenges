import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_challenge/l10n/app_localizations.dart';
import 'package:todo_challenge/main.dart';

void main() {
  testWidgets('shows title and empty state', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoChallengeApp());

    expect(find.text(l10n.screenTitle), findsOneWidget);
    expect(find.byKey(AppKeys.emptyState), findsOneWidget);
    expect(find.byKey(AppKeys.todoList), findsNothing);
  });

  testWidgets('adds a to-do and shows it newest first', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoChallengeApp());

    await tester.enterText(find.byKey(AppKeys.todoInput), 'Ship feature X');
    await tester.tap(find.byKey(AppKeys.addTodoButton));
    await tester.pumpAndSettle();

    expect(find.byKey(AppKeys.emptyState), findsNothing);
    expect(find.text('Ship feature X'), findsOneWidget);
    expect(find.byKey(AppKeys.todoList), findsOneWidget);
  });

  testWidgets('does not add empty or whitespace-only to-dos', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TodoChallengeApp());

    await tester.tap(find.byKey(AppKeys.addTodoButton));
    await tester.pumpAndSettle();

    expect(find.byKey(AppKeys.emptyState), findsOneWidget);

    await tester.enterText(find.byKey(AppKeys.todoInput), '   ');
    await tester.tap(find.byKey(AppKeys.addTodoButton));
    await tester.pumpAndSettle();

    expect(find.byKey(AppKeys.emptyState), findsOneWidget);
  });

  testWidgets('deletes a to-do', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoChallengeApp());

    await tester.enterText(find.byKey(AppKeys.todoInput), 'Delete me');
    await tester.tap(find.byKey(AppKeys.addTodoButton));
    await tester.pumpAndSettle();

    expect(find.text('Delete me'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete_outline));
    await tester.pumpAndSettle();

    expect(find.text('Delete me'), findsNothing);
    expect(find.byKey(AppKeys.emptyState), findsOneWidget);
  });
}
