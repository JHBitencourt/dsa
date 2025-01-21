import 'package:arrays/leetcode/first_bad_version_278.dart';
import 'package:test/test.dart';

void main() {
  test('First bad version', () {
    expect(firstBadVersion(1, 1), 1);
    expect(firstBadVersion(2, 1), 1);
    expect(firstBadVersion(2, 2), 2);
    expect(firstBadVersion(10, 5), 5);
    expect(firstBadVersion(997, 14), 14);
    expect(firstBadVersion(997, 656), 656);
  });
}