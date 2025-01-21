
import 'package:arrays/leetcode/search_insert_position_35.dart';
import 'package:test/test.dart';

void main() {
  test('First bad version', () {
    expect(searchInsert([1], 1), 0);
    expect(searchInsert([1], 2), 1);
    expect(searchInsert([1], 0), 0);
    expect(searchInsert([1,3,5,6], 5), 2);
    expect(searchInsert([1,3,5,6], 9), 4);
    expect(searchInsert([1,3,5,6], 0), 0);
    expect(searchInsert([1,3,5,6], 2), 1);
  });
}