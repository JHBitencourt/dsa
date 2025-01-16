import 'package:arrays/leetcode/check_if_n_and_its_double_exist_1346.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    expect(checkIfExistBruteForce([10, 2, 5, 3]), true);
    expect(checkIfExistBruteForce([3, 1, 7, 11]), false);
    expect(checkIfExistBruteForce([7, 1, 14, 11]), true);
    expect(checkIfExistBruteForce([-2, 0, 10, -19, 4, 6, -8]), false);
  });
}
