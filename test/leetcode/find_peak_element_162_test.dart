import 'package:arrays/leetcode/find_peak_element_162.dart';
import 'package:test/test.dart';

void main() {
  test('Find peak element', () {
    expect(findPeakElement([1]), 0);
    expect(findPeakElement([1, 2, 3, 1]), 2);
    expect(findPeakElement([1, 2, 1, 3, 5, 6, 4]), anyOf(1, 5));
    expect(findPeakElement([1, 2, 1, 3, 5, 6, 7]), anyOf(1, 6));
    expect(findPeakElement([1, 2, 3, 4, 5]), 4);
    expect(findPeakElement([5, 4, 3, 2, 1]), 0);
  });
}
