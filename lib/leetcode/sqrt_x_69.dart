int sqrt(int x) {
  int left = 0;
  int right = x;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    int sqrt = mid * mid;
    if (sqrt > x) {
      right = mid - 1;
    } else if (sqrt < x) {
      left = mid + 1;
    } else {
      return mid;
    }
  }

  return right.floor();
}
