int findNumbersEvenDigits(List<int> nums) {
  var evenDigits = 0;
  for (int num in nums) {
    var digits = 1;
    var rest = num / 10;

    while (rest >= 1) {
      rest /= 10;
      digits++;
    }
    if (digits % 2 == 0) {
      evenDigits++;
    }
  }

  return evenDigits;
}
