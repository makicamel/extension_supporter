extension StaticSupporterDuration on Duration {
  static const int daysPerWeeks = 7;

  /// Returns the number of whole weeks spanned by this Duration.
  /// Duration(days: 5).inWeeks => 0
  /// Duration(days: 7).inWeeks => 1
  /// Duration(days: 8).inWeeks => 1
  int get inWeeks => inDays ~/ daysPerWeeks;
}
