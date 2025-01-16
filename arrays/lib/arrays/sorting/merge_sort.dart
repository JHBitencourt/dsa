List<int> mergeSort(List<int> array) {
  if (array.length < 2) return array;

  int midIndex = (array.length / 2).floor();
  final left = array.sublist(0, midIndex);
  final right = array.sublist(midIndex);

  return merge(mergeSort(left), mergeSort(right));
}

List<int> merge(List<int> left, List<int> right) {
  final array = <int>[];
  int l = 0;
  int r = 0;

  while (l < left.length && r < right.length) {
    if (left[l] < right[r]) {
      array.add(left[l]);
      l++;
    } else {
      array.add(right[r]);
      r++;
    }
  }

  while (l < left.length) {
    array.add(left[l]);
    l++;
  }

  while (r < right.length) {
    array.add(right[r]);
    r++;
  }

  return array;
}