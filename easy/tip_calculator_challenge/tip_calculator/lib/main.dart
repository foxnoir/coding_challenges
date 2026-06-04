import 'package:flutter/material.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';
import 'package:tip_calculator/presentation/tip_calculator_screen.dart';

void main() {
  runApp(const TipCalculatorApp());
}

class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: l10n.materialAppTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const TipCalculatorScreen(),
    );
  }
}
