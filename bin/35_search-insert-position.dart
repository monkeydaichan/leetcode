void main() {
  final sol = Solution();
  print(sol.searchInsert([1, 3, 5, 6], 2));
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    final idx = nums.indexWhere((element) => element == target);
    if (idx < 0) {
      nums.add(target);
      nums.sort((a, b) => a.compareTo(b));
      return nums.indexWhere((element) => element == target);
    }
    return idx;
  }
}
