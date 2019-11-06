import 'package:test/test.dart';
import 'package:extension_supporter/duration.dart';

void main() {
  test('Duration#inWeeks', () {
    expect(const Duration(days: 1).inWeeks, 0);
    expect(const Duration(days: 5).inWeeks, 0);
    expect(const Duration(days: 7).inWeeks, 1);
  });
}
