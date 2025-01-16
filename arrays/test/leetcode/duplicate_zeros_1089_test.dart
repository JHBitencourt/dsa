import 'package:arrays/leetcode/duplicate_zeros_1089.dart';
import 'package:test/test.dart';

void main() {
  test('Duplicated zeros cases O(n)', () {
    expect(duplicateZeros([]), []);
    expect(duplicateZeros([1, 2, 3, 4]), [1, 2, 3, 4]);

    ///normal cases
    expect(duplicateZeros([0, 1, 2, 3]), [0, 0, 1, 2]);
    expect(duplicateZeros([0, 0, 2, 3]), [0, 0, 0, 0]);
    expect(duplicateZeros([0, 0, 0, 1]), [0, 0, 0, 0]);

    expect(duplicateZeros([0, 1, 7, 6, 0, 2, 0, 7]), [0, 0, 1, 7, 6, 0, 0, 2]);

    ///edge-cases, the last zero is only copied, not duplicated
    expect(duplicateZeros([0, 1, 0, 2]), [0, 0, 1, 0]);
    expect(duplicateZeros([0, 1, 0, 2, 0, 0, 3, 4, 5]),
        [0, 0, 1, 0, 0, 2, 0, 0, 0]);
  });

  test('Duplicated zeros cases O(nˆ2)', () {
    expect(duplicateZeros0n2([]), []);
    expect(duplicateZeros0n2([1, 2, 3, 4]), [1, 2, 3, 4]);

    ///normal cases
    expect(duplicateZeros0n2([0, 1, 2, 3]), [0, 0, 1, 2]);
    expect(duplicateZeros0n2([0, 0, 2, 3]), [0, 0, 0, 0]);
    expect(duplicateZeros0n2([0, 0, 0, 1]), [0, 0, 0, 0]);

    expect(duplicateZeros0n2([0, 1, 7, 6, 0, 2, 0, 7]), [0, 0, 1, 7, 6, 0, 0, 2]);

    ///edge-cases, the last zero is only copied, not duplicated
    expect(duplicateZeros0n2([0, 1, 0, 2]), [0, 0, 1, 0]);
    expect(duplicateZeros0n2([0, 1, 0, 2, 0, 0, 3, 4, 5]),
        [0, 0, 1, 0, 0, 2, 0, 0, 0]);
  });
}
