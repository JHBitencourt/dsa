import 'package:arrays/leetcode/max_consecutive_ones_489.dart';
import 'package:test/test.dart';

void main() {
  test('Max consecutive ones', () {
    expect(findMaxConsecutiveOnes([0]), 0);
    expect(findMaxConsecutiveOnes([1]), 1);
    expect(findMaxConsecutiveOnes([1, 1, 1]), 3);
    expect(findMaxConsecutiveOnes([1, 0, 1]), 1);
    expect(findMaxConsecutiveOnes([0, 1, 1, 0, 1, 1, 1, 0, 1, 0]), 3);
    expect(findMaxConsecutiveOnes([1, 1, 0, 1, 0]), 2);
  });
}
