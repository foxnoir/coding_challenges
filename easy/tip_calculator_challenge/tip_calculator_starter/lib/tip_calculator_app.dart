import 'package:flutter/material.dart';

/// Tip Calculator Challenge — start here.
///
/// Minimal starter: only this file and main.dart.
/// **Part of the task:** create folders, widgets, controller, and l10n
/// yourself; then implement the full calculator UI + logic.
///
/// Acceptance criteria: see README.md in the challenge folder (easy/tip_calculator_challenge/).
class TipCalculatorApp extends StatelessWidget {
  const TipCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Calculator Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const _TipCalculatorPlaceholderScreen(),
    );
  }
}

class _TipCalculatorPlaceholderScreen extends StatelessWidget {
  const _TipCalculatorPlaceholderScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tip Calculator')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Implement the Tip Calculator here.\n'
            'Structure the project as you build.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
