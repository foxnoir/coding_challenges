/// Result of a tip calculation for display.
class TipResult {
  const TipResult({
    required this.tip,
    required this.total,
    required this.isValid,
  });

  const TipResult.zero()
      : tip = 0,
        total = 0,
        isValid = false;

  final double tip;
  final double total;
  final bool isValid;
}
