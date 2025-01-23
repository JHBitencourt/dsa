import 'package:arrays/leetcode/find_numbers_with_even_number_digits_1295.dart';
import 'package:test/test.dart';

void main() {
  test('Find numbers with even number of digits', () {
    expect(findNumbersEvenDigits([10]), 1);
    expect(findNumbersEvenDigits([1, 10, 99, 978]), 2);
    expect(findNumbersEvenDigits([12, 345, 2, 6, 7896]), 2);
    expect(findNumbersEvenDigits([555, 901, 482, 1771]), 1);
  });
}
