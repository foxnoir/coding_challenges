import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tip_calculator/l10n/app_localizations.dart';
import 'package:tip_calculator/presentation/tip_calculator_screen.dart';

void main() {
  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: TipCalculatorScreen()),
    );
  }

  testWidgets('shows title and default 15% chip selected', (
    WidgetTester tester,
  ) async {
    await pumpApp(tester);

    expect(find.text(l10n.screenTitle), findsOneWidget);
    expect(find.byKey(AppKeys.tipChip(15)), findsOneWidget);
  });

  testWidgets('shows tip and total for bill 100 at 15%', (
    WidgetTester tester,
  ) async {
    await pumpApp(tester);

    await tester.enterText(find.byKey(AppKeys.billInput), '100');
    await tester.pumpAndSettle();

    expect(find.byKey(AppKeys.tipAmount), findsOneWidget);
    expect(find.text('${l10n.tipLabel}: €15.00'), findsOneWidget);
    expect(find.text('${l10n.totalLabel}: €115.00'), findsOneWidget);
  });

  testWidgets('updates tip when 20% chip is selected', (
    WidgetTester tester,
  ) async {
    await pumpApp(tester);

    await tester.enterText(find.byKey(AppKeys.billInput), '100');
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(AppKeys.tipChip(20)));
    await tester.pumpAndSettle();

    expect(find.text('${l10n.tipLabel}: €20.00'), findsOneWidget);
    expect(find.text('${l10n.totalLabel}: €120.00'), findsOneWidget);
  });

  testWidgets('shows zero amounts for invalid bill', (
    WidgetTester tester,
  ) async {
    await pumpApp(tester);

    await tester.enterText(find.byKey(AppKeys.billInput), '   ');
    await tester.pumpAndSettle();

    expect(find.text('${l10n.tipLabel}: €0.00'), findsOneWidget);
    expect(find.text('${l10n.totalLabel}: €0.00'), findsOneWidget);
  });
}
