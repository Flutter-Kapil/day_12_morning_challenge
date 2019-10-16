import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(countPosSumNeg([1, 2, -4, -6]), [2, -10]);
    expect(countPosSumNeg([1, 2, -4, 4, 2, -6]), [4, -10]);
  });
  test("test case 2", () {
    expect(digitDistance(234, 489), 12);
  });
}
