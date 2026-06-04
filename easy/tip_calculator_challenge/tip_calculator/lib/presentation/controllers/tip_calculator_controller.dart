import 'package:tip_calculator/data/models/tip_result.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';

typedef TipCalculatorChanged = void Function();

/// Reference solution — tip calculation logic.
class TipCalculatorController {
  TipCalculatorController({this.onChanged});

  final TipCalculatorChanged? onChanged;

  int _tipPercent = AppTipPercents.defaultPercent;

  int get tipPercent => _tipPercent;

  void selectTipPercent({required int percent}) {
    if (_tipPercent == percent) {
      return;
    }
    _tipPercent = percent;
    onChanged?.call();
  }

  TipResult calculate({required String billText}) {
    final bill = _parseBill(billText);
    if (bill == null || bill <= 0) {
      return const TipResult.zero();
    }

    final tip = bill * _tipPercent / 100;
    return TipResult(
      tip: tip,
      total: bill + tip,
      isValid: true,
    );
  }

  double? _parseBill(String billText) {
    final normalized = billText.trim().replaceAll(',', '.');
    if (normalized.isEmpty) {
      return null;
    }
    return double.tryParse(normalized);
  }
}
