import 'package:flutter/material.dart' show Key;

abstract class AppL10n {
  const AppL10n();

  String get materialAppTitle;
  String get screenTitle;
  String get billAmountLabel;
  String get billAmountHint;
  String get tipLabel;
  String get totalLabel;
  String tipPercentLabel(int percent);
  String formatMoney(double amount);
}

final class AppL10nEn extends AppL10n {
  const AppL10nEn();

  @override
  String get materialAppTitle => 'Tip Calculator Challenge';

  @override
  String get screenTitle => 'Tip Calculator';

  @override
  String get billAmountLabel => 'Bill amount';

  @override
  String get billAmountHint => 'e.g. 42.50';

  @override
  String get tipLabel => 'Tip';

  @override
  String get totalLabel => 'Total';

  @override
  String tipPercentLabel(int percent) => '$percent%';

  @override
  String formatMoney(double amount) => '€${amount.toStringAsFixed(2)}';
}

const AppL10n l10n = AppL10nEn();

abstract final class AppKeys {
  static const billInput = Key('bill-input');
  static Key tipChip(int percent) => Key('tip-chip-$percent');
  static const tipAmount = Key('tip-amount');
  static const totalAmount = Key('total-amount');
}

abstract final class AppSpacing {
  static const double screenPadding = 16;
  static const double sectionGap = 24;
  static const double chipGap = 8;
}

abstract final class AppTipPercents {
  static const options = [10, 15, 20];
  static const defaultPercent = 15;
}
