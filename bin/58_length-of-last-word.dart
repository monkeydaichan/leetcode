void main() {
  final sol = Solution();
  print(sol.lengthOfLastWord('   fly me   to   the moon  '));
}

class Solution {
  int lengthOfLastWord(String s) {
    return s
        .split(" ")
        .where((element) => element.isNotEmpty)
        .toList()
        .last
        .length;
  }
}
