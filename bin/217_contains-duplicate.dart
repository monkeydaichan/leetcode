void main() {
  final sol = Solution();
  print(sol.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    final e = <int>[];
    for (var i = 0; i < nums.length; i++) {
      if (e.contains(nums[i])) {
        return true;
      } else {
        e.add(nums[i]);
      }
    }
    return false;
  }
  // bool containsDuplicate(List<int> nums) {
  //   return List.from(nums.toSet().toList()).length != nums.length;
  // }
}
