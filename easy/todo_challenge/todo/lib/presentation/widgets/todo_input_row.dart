import 'package:flutter/material.dart';
import 'package:todo/l10n/app_localizations.dart';

class TodoInputRow extends StatelessWidget {
  const TodoInputRow({
    required this.textController,
    required this.onAddPressed,
    super.key,
  });

  final TextEditingController textController;
  final VoidCallback onAddPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.screenPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              key: AppKeys.todoInput,
              controller: textController,
              decoration: InputDecoration(
                labelText: l10n.newTodoLabel,
                hintText: l10n.newTodoHint,
                border: const OutlineInputBorder(),
              ),
              maxLines: 2,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => onAddPressed(),
            ),
          ),
          const SizedBox(width: AppSpacing.inputButtonGap),
          FilledButton(
            key: AppKeys.addTodoButton,
            onPressed: onAddPressed,
            child: Text(l10n.addButton),
          ),
        ],
      ),
    );
  }
}
