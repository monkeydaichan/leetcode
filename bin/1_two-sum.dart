void main() {
  final case1 = [3, 2, 3];
  final sol = Solution();
  print(sol.twoSum(case1, 6));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (var i = 0; i < nums.length; i++) {
      if (i == nums.length - 1) {
        continue;
      }
      for (var idx = 0; idx < nums.length; idx++) {
        if (i == idx) {
          continue;
        }
        final sum = nums[i] + nums[idx];
        if (sum == target) {
          return [i, idx];
        }
      }
    }
    return [];
  }
}
