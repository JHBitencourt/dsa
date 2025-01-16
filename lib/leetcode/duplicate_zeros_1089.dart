List<int> duplicateZeros(List<int> arr) {
  /// stores the amount of zeros that will be duplicated
  int duplicates = 0;

  /// controls the index boundary of the values that will fit in the final array
  int pointer = arr.length - 1;

  /// count the zeros that will be duplicated
  for (int i = 0; i <= pointer - duplicates; i++) {
    if (arr[i] == 0) {
      if (i == pointer - duplicates) {
        arr[pointer] = 0;
        pointer--;
        break;
      }

      duplicates++;
    }
  }

  /// moves the pointer to the index of the last original value that will remain in the array
  pointer = pointer - duplicates;

  /// realocate values and duplicate
  for (int i = pointer; i >= 0; i--) {
    if (arr[i] == 0) {
      arr[i + duplicates] = 0;
      duplicates--;
      arr[i + duplicates] = 0;
    } else {
      arr[i + duplicates] = arr[i];
    }
  }

  return arr;
}

/// O(nˆ2)
List<int> duplicateZeros0n2(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] == 0) {
      for (var j = arr.length - 1; j > i; j--) {
        arr[j] = arr[j - 1];
      }

      i++;
    }
  }
  return arr;
}
