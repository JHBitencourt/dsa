int firstBadVersion(int n, int bad) {
  int left = 1;
  int right = n;

  while (left < right) {
    int mid = (right - left) ~/ 2 + left;

    if (!isBadVersion(mid, bad)) {
      left = mid + 1;
    } else {
      // we don't know wether mid is the first bad version or not, so we keep it in the search space
      right = mid;
    }
  }

  return left;
}

bool isBadVersion(int n, int bad) => n >= bad;
