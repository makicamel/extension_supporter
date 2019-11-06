import 'package:test/test.dart';
import 'package:extension_supporter/num.dart';

void main() {
  test('Integer#duraion-getters', () {
    expect(1.weeks, const Duration(days: 7));
    expect(2.days, const Duration(hours: 48));
    expect(3.hours, const Duration(minutes: 180));
    expect(4.minutes, const Duration(seconds: 240));
    expect(5.seconds, const Duration(milliseconds: 5000));
    expect(6.milliseconds, const Duration(microseconds: 6000));
    expect(7.microseconds, const Duration(microseconds: 7));
  });

  test('Float#duration-getters', () {
    expect(1.5.weeks, const Duration(days: 10, hours: 12));
    expect(2.2.days, const Duration(hours: 52, minutes: 48));
    expect(3.4.hours, const Duration(minutes: 204));
    expect(4.4.minutes, const Duration(seconds: 264));
    expect(5.5.seconds, const Duration(milliseconds: 5500));
    expect(6.6.milliseconds, const Duration(microseconds: 6600));
    expect(7.4.microseconds, const Duration(microseconds: 7));
    expect(7.5.microseconds, const Duration(microseconds: 8));
  });
}
