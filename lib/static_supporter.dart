library static_supporter;

extension StaticSupporterDateTime on DateTime {
  /// Recieve argument(s) and return new instance changed only recieved parameters' value.
  /// If no arguments passed, return same value instance.
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
}
