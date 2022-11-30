void main() {
  final sol = Solution();
  sol.merge([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.removeRange(m, m + n);

    nums1.addAll(nums2);
    nums1.sort();
  }
}
