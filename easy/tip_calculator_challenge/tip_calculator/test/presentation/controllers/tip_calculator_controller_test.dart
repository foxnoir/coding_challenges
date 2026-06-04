import 'package:flutter_test/flutter_test.dart';
import 'package:tip_calculator/presentation/controllers/tip_calculator_controller.dart';

void main() {
  group('TipCalculatorController (solution)', () {
    test('defaults to 15% tip', () {
      final controller = TipCalculatorController();

      expect(controller.tipPercent, 15);
    });

    group('calculate', () {
      test('returns 15.00 tip and 115.00 total for bill 100 at 15%', () {
        final controller = TipCalculatorController();

        final result = controller.calculate(billText: '100');

        expect(result.isValid, isTrue);
        expect(result.tip, 15);
        expect(result.total, 115);
      });

      test('parses comma decimal separator', () {
        final controller = TipCalculatorController();

        final result = controller.calculate(billText: '42,50');

        expect(result.isValid, isTrue);
        expect(result.tip, closeTo(6.375, 0.001));
      });

      test('returns zero for empty or invalid input', () {
        final controller = TipCalculatorController();

        expect(controller.calculate(billText: '').isValid, isFalse);
        expect(controller.calculate(billText: '   ').isValid, isFalse);
        expect(controller.calculate(billText: 'abc').isValid, isFalse);
        expect(controller.calculate(billText: '0').isValid, isFalse);
        expect(controller.calculate(billText: '-10').isValid, isFalse);
      });

      test('uses updated tip percent', () {
        final controller = TipCalculatorController()
          ..selectTipPercent(percent: 20);

        final result = controller.calculate(billText: '50');

        expect(result.tip, 10);
        expect(result.total, 60);
      });
    });

    group('selectTipPercent', () {
      test('calls onChanged when percent changes', () {
        var callCount = 0;
        final controller = TipCalculatorController(
          onChanged: () => callCount++,
        )..selectTipPercent(percent: 20);

        expect(callCount, 1);
        expect(controller.tipPercent, 20);
      });

      test('does not call onChanged when percent is unchanged', () {
        var callCount = 0;
        final controller = TipCalculatorController(
          onChanged: () => callCount++,
        )..selectTipPercent(percent: 15);

        expect(controller.tipPercent, 15);
        expect(callCount, 0);
      });
    });
  });
}
