// * 途中
void main() {
  final sol = Solution();
  print(sol.removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}

// * もとのnums.lengthと重複削除したあとのresults.lengthの長さは同じ
// * 重複してある要素は _ に変更
// * resultsを小さい順にsortし，重複していない個数をreturn

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length == 1) {
      return 1;
    }
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        nums.removeAt(i + 1);
        i--;
      }
    }
    print(nums);

    return nums.length;
  }
}
