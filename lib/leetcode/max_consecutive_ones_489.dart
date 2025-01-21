  int findMaxConsecutiveOnes(List<int> nums) {
    var ones = 0;
    var maxOnes = 0;
    for(var i = 0; i < nums.length; i++) {
        if(nums[i] == 1) {
            ones++;
        } else {
            if(maxOnes < ones) maxOnes = ones;
            ones = 0;
        }
    }
      
    return maxOnes > ones ? maxOnes : ones;
  }