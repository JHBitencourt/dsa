import 'package:arrays/arrays/two_d_array.dart';
import 'package:test/test.dart';

void main() {
  final array = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  final arrayDifferentRows = [
    [1, 2, 3, 4, 5],
    [6, 7, 8],
    [9, 10],
    [11, 12, 13, 14],
  ];

  test('traverse row based', () {
    expect(rowBased(array), [1, 2, 3, 4, 5, 6, 7, 8, 9]);
  });

  test('traverse column based', () {
    expect(colBased(array), [1, 4, 7, 2, 5, 8, 3, 6, 9]);
  });

  test('traverse row based dynamic size', () {
    expect(rowBased(arrayDifferentRows),
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]);
  });

  test('traverse column based dynamic size', () {
    expect(colBasedDynamicSize(arrayDifferentRows),
        [1, 6, 9, 11, 2, 7, 10, 12, 3, 8, 13, 4, 14, 5]);
  });
}
