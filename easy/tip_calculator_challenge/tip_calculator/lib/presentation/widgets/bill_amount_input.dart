import 'package:flutter/material.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';

class BillAmountInput extends StatelessWidget {
  const BillAmountInput({
    required this.controller,
    required this.onChanged,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: AppKeys.billInput,
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: l10n.billAmountLabel,
        hintText: l10n.billAmountHint,
        border: const OutlineInputBorder(),
        prefixText: '€ ',
      ),
      onChanged: onChanged,
    );
  }
}
