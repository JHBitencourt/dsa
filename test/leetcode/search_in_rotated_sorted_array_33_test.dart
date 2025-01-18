import 'package:arrays/leetcode/search_in_rotated_sorted_array_33.dart';
import 'package:test/test.dart';

void main() {
  test('Binary search rotated array', () {
    expect(search([1], 1), 0);
    expect(search([1], 0), -1);
    expect(search([3, 1], 1), 1);
    expect(search([3, 1], 3), 0);
    expect(search([5, 6, 0, 1, 2, 3, 4], 3), 5);
    expect(search([3, 4, 5, 6, 7, 0, 1, 2], 1), 6);
  });
}
