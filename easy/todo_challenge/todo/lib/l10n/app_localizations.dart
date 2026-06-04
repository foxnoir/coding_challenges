import 'package:flutter/material.dart' show Key;

/// Simulated i18n — point [l10n] at another `AppL10n` implementation later.
abstract class AppL10n {
  const AppL10n();

  String get materialAppTitle;
  String get screenTitle;
  String get newTodoLabel;
  String get newTodoHint;
  String get addButton;
  String get emptyMessage;
  String get deleteTooltip;
}

/// English copy (default locale).
final class AppL10nEn extends AppL10n {
  const AppL10nEn();

  @override
  String get materialAppTitle => 'To-Do Challenge';

  @override
  String get screenTitle => 'To-Do';

  @override
  String get newTodoLabel => 'New to-do';

  @override
  String get newTodoHint => 'Buy milk, call client, review PR…';

  @override
  String get addButton => 'Add';

  @override
  String get emptyMessage => 'No to-dos yet. Add one above.';

  @override
  String get deleteTooltip => 'Delete to-do';
}

/// Active locale for the app.
const AppL10n l10n = AppL10nEn();

/// Widget keys shared with tests (stable across locales).
abstract final class AppKeys {
  static const todoInput = Key('todo-input');
  static const addTodoButton = Key('add-todo-button');
  static const emptyState = Key('empty-state');
  static const todoList = Key('todo-list');

  static Key deleteTodo(String id) => Key('delete-todo-$id');
}

/// Layout constants (locale-independent).
abstract final class AppSpacing {
  static const double screenPadding = 16;
  static const double inputButtonGap = 12;
}
