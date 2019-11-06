import 'package:test/test.dart';
import 'package:extension_supporter/date_time.dart';

void main() {
  test('DateTime#change', () {
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(year: 2001),
        DateTime(2001, 1, 2, 10, 20, 30, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(month: 2),
        DateTime(2000, 2, 2, 10, 20, 30, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(day: 3),
        DateTime(2000, 1, 3, 10, 20, 30, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(hour: 11),
        DateTime(2000, 1, 2, 11, 20, 30, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(minute: 21),
        DateTime(2000, 1, 2, 10, 21, 30, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(second: 31),
        DateTime(2000, 1, 2, 10, 20, 31, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(millisecond: 5),
        DateTime(2000, 1, 2, 10, 20, 30, 5, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(microsecond: 6),
        DateTime(2000, 1, 2, 10, 20, 30, 4, 6));
  });

  test('DateTime#change accepts multiple arguments', () {
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(year: 2001, month: 2),
        DateTime(2001, 2, 2, 10, 20, 30, 4, 5));
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(hour: 11, minute: 21),
        DateTime(2000, 1, 2, 11, 21, 30, 4, 5));
    expect(
        DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(
          year: 1999,
          month: 12,
          day: 13,
          hour: 14,
          minute: 15,
          second: 16,
          millisecond: 17,
          microsecond: 18,
        ),
        DateTime(1999, 12, 13, 14, 15, 16, 17, 18));
  });

  test('DateTime#change returns same value instance with passing no arguments',
      () {
    expect(DateTime(2000, 1, 2, 10, 20, 30, 4, 5).change(),
        DateTime(2000, 1, 2, 10, 20, 30, 4, 5));
  });

  test('DateTime#addMonth', () {
    expect(DateTime(2020, 1, 31).addMonth(1), DateTime(2020, 2, 29));
    expect(DateTime(2020, 2, 29).addMonth(1), DateTime(2020, 3, 29));
    expect(DateTime(2020, 2, 29).addMonth(0), DateTime(2020, 2, 29));
    expect(DateTime(2020, 2, 29).addMonth(-1), DateTime(2020, 1, 29));
    expect(DateTime(2020, 2, 29).addMonth(12), DateTime(2021, 2, 28));
    expect(DateTime(2020, 1, 31).addMonth(13), DateTime(2021, 2, 28));
  });
}
