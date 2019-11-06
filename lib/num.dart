import 'package:extension_supporter/duration.dart';

extension ExtensionSupporterNum on num {
  /// Return a Duration object represented in weeks.
  /// 1.weeks   => 168:00:00.000000
  /// 1.1.weeks => 184:48:00.000000
  Duration get weeks => days * ExtensionSupporterDuration.daysPerWeeks;

  /// Return a Duration object represented in days.
  /// 2.days   => 48:00:00.000000
  /// 2.2.days => 52:48:00.000000
  Duration get days => milliseconds * Duration.millisecondsPerDay;

  /// Return a Duration object represented in hours.
  /// 3.hours   => 3:00:00.000000
  /// 3.3.hours => 3:18:00.000000
  Duration get hours => milliseconds * Duration.millisecondsPerHour;

  /// Return a Duration object represented in minutes.
  /// 4.minutes   => 0:04:00.000000
  /// 4.4.minutes => 0:04:24.000000
  Duration get minutes => milliseconds * Duration.millisecondsPerMinute;

  /// Return a Duration object represented in seconds.
  /// 5.seconds   => 0:00:05.000000
  /// 5.5.seconds => 0:00:05.500000
  Duration get seconds => milliseconds * Duration.millisecondsPerSecond;

  /// Return a Duration object represented in milliseconds.
  /// 6.milliseconds   => 0:00:00.006000
  /// 6.6.milliseconds => 0:00:00.006600
  Duration get milliseconds => Duration(
      microseconds: (this * Duration.microsecondsPerMillisecond).toInt());

  /// Return a Duration object represented in microseconds.
  /// 7.microseconds => 0:00:00.000007
  /// ** Notice **
  /// Rounds down to the nearest whole number.
  /// 7.4.microseconds => 0:00:00.000007
  /// 7.5.microseconds => 0:00:00.000008
  Duration get microseconds => Duration(microseconds: round());
}
