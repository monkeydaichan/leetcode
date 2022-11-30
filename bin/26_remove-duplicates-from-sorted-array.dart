void main() {
  final sol = Solution();
  print(sol.removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length == 1) {
      return 1;
    }
    final nonDup = nums.toSet().toList();
    for (var i = 0; i < nonDup.length; i++) {
      nums[i] = nonDup[i];
    }

    return nonDup.length;
  }
}
