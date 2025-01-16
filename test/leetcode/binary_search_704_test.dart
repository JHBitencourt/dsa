import 'package:arrays/leetcode/binary_search_704.dart';
import 'package:test/test.dart';

void main() {
  test('binary search', () {
    expect(search([], 1), -1);
    expect(search([1], 1), 0);
    expect(search([1,2,3,4,5,6,7], 1), 0);
    expect(search([1,2,3,4,5,6,7], 7), 6);
    expect(search([-7,-2,3,4,5], 3), 2);
  });
}