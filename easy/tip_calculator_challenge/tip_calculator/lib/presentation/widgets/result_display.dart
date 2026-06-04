import 'package:flutter/material.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';

class ResultDisplay extends StatelessWidget {
  const ResultDisplay({
    required this.tip,
    required this.total,
    super.key,
  });

  final double tip;
  final double total;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          key: AppKeys.tipAmount,
          '${l10n.tipLabel}: ${l10n.formatMoney(tip)}',
          style: theme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          key: AppKeys.totalAmount,
          '${l10n.totalLabel}: ${l10n.formatMoney(total)}',
          style: theme.headlineSmall,
        ),
      ],
    );
  }
}
