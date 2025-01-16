bool checkIfExistBruteForce(List<int> arr) {
  int i = 0;
  int j = 1;

  bool found = false;
  while (i < arr.length -1 && !found) {
    if (arr[j] * 2 == arr[i] || arr[i] * 2 == arr[j]) {
      found = true;
    }

    if (j == arr.length - 1) {
      i++;
      j = i + 1;
    } else {
      j++;
    }
  }

  return found;
}
