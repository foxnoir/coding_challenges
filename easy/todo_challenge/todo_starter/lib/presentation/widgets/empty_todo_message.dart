import 'package:flutter/material.dart';
import 'package:todo_starter/l10n/app_localizations.dart';

class EmptyTodoMessage extends StatelessWidget {
  const EmptyTodoMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Text(
        l10n.emptyMessage,
        key: AppKeys.emptyState,
        style: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
