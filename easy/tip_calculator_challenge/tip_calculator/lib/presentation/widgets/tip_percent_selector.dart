import 'package:flutter/material.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';

class TipPercentSelector extends StatelessWidget {
  const TipPercentSelector({
    required this.selectedPercent,
    required this.onSelected,
    super.key,
  });

  final int selectedPercent;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.chipGap,
      children: [
        for (final percent in AppTipPercents.options)
          ChoiceChip(
            key: AppKeys.tipChip(percent),
            label: Text(l10n.tipPercentLabel(percent)),
            selected: selectedPercent == percent,
            onSelected: (_) => onSelected(percent),
          ),
      ],
    );
  }
}
