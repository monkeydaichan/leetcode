void main() {
  final sol = Solution();
  print(sol.removeElement([3, 2, 2, 3], 3));
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int cnt = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[cnt] = nums[i];
        cnt++;
      }
    }
    return cnt;
  }
}
