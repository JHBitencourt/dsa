int searchInsert(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    int mid = (right - left) ~/ 2 + left;

    if (nums[mid] == target) return mid;

    if (nums[mid] > target) {
      right = mid;
    } else {
      left = mid + 1;
    }
  }

  return nums[left] < target ? left + 1 : left;
}
