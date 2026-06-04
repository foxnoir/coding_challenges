import 'package:flutter/material.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';
import 'package:tip_calculator/presentation/controllers/tip_calculator_controller.dart';
import 'package:tip_calculator/presentation/widgets/bill_amount_input.dart';
import 'package:tip_calculator/presentation/widgets/result_display.dart';
import 'package:tip_calculator/presentation/widgets/tip_percent_selector.dart';

class TipCalculatorScreen extends StatefulWidget {
  const TipCalculatorScreen({super.key});

  @override
  State<TipCalculatorScreen> createState() => _TipCalculatorScreenState();
}

class _TipCalculatorScreenState extends State<TipCalculatorScreen> {
  late final TipCalculatorController _controller;
  late final TextEditingController _billController;

  @override
  void initState() {
    super.initState();
    _billController = TextEditingController();
    _controller = TipCalculatorController(onChanged: () => setState(() {}));
  }

  @override
  void dispose() {
    _billController.dispose();
    super.dispose();
  }

  void _onBillChanged(String _) => setState(() {});

  void _onTipSelected(int percent) {
    _controller.selectTipPercent(percent: percent);
  }

  @override
  Widget build(BuildContext context) {
    final result = _controller.calculate(billText: _billController.text);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.screenTitle)),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BillAmountInput(
              controller: _billController,
              onChanged: _onBillChanged,
            ),
            const SizedBox(height: AppSpacing.sectionGap),
            TipPercentSelector(
              selectedPercent: _controller.tipPercent,
              onSelected: _onTipSelected,
            ),
            const SizedBox(height: AppSpacing.sectionGap),
            ResultDisplay(tip: result.tip, total: result.total),
          ],
        ),
      ),
    );
  }
}
