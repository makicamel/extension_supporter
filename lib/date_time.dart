extension StaticSupporterDateTime on DateTime {
  /// Recieve argument(s) and return new instance changed only recieved parameters' value.
  /// If no arguments passed, return same value instance.
  /// DateTime(2020, 12, 31).change(year: 2001) => 2001-12-31 00:00:00.000
  /// ** notice **
  ///   If there's no corresponding date after change,
  ///   Dart convert the date-time to correct.
  /// DateTime(2020, 2, 29).change(year: 2021) => 2021-03-01 00:00:00.000
  /// DateTime(2020, 11, 12).change(month: 13) => 2021-01-12 00:00:00.000
  /// DateTime(2020, 5, 4).change(month: -1)   => 2019-11-04 00:00:00.000
  DateTime change({
    int year,
    int month,
    int day,
    int hour,
    int minute,
    int second,
    int millisecond,
    int microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }

  /// Alias of [DateTime]#add.
  DateTime operator +(Duration duration) => add(duration);

  /// Alias of [DateTime]#subtract
  DateTime operator -(Duration duration) => subtract(duration);
}
