import 'package:arrays/arrays/sorting/merge_sort.dart';
import 'package:test/test.dart';

void main() {
  test('Merging and sorting', () {
    expect(mergeSort([2,1]), [1,2]);
    expect(mergeSort([1, 2, 3, 4, 5]), [1, 2, 3, 4, 5]);
    expect(mergeSort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5]);
    expect(mergeSort([4, 2, 4, 3, 2, 1, 1]), [1, 1, 2, 2, 3, 4, 4]);
    expect(mergeSort([7, 7, 7, 7, 7]), [7, 7, 7, 7, 7]);
    expect(mergeSort([-3, -1, -7, -4, 0, 2, 1]), [-7, -4, -3, -1, 0, 1, 2]);
    expect(mergeSort([7, 3, 5, 1, 9]), [1, 3, 5, 7, 9]);
  });

  test('Merging sorted arrays', () {
    expect(merge([2], [1]), [1,2]);
    expect(merge([1], [2]), [1,2]);

    expect(merge([2,3,4], [1,5,6]), [1,2,3,4,5,6]);
    expect(merge([2,3,4], [1,5]), [1,2,3,4,5]);
  });
}
