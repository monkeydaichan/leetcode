// ! できてない

void main() {
  final sol = Solution();
  print(sol.isValid("()["));
}

class Solution {
  final symbols = ['(', ')', '{', '}', '[', ']'];
  final open1 = "(";
  final open2 = "{";
  final open3 = "[";
  final close1 = ")";
  final close2 = "}";
  final close3 = "]";
  bool isValid(String s) {
    final strs = s.split('');

    if (strs.contains(open1)) {
      final a = strs.remove(close1);
      if (a) {
        strs.remove(open1);
      } else {
        return false;
      }
    }
    if (strs.contains(open2)) {
      final a = strs.remove(close2);
      if (a) {
        strs.remove(open2);
      } else {
        return false;
      }
    }
    if (strs.contains(open3)) {
      final a = strs.remove(close3);
      if (a) {
        strs.remove(open3);
      } else {
        return false;
      }
    }
    if (strs.contains(close1)) {
      final a = strs.remove(open1);
      if (a) {
        strs.remove(close1);
      } else {
        return false;
      }
    }
    if (strs.contains(close2)) {
      final a = strs.remove(open2);
      if (a) {
        strs.remove(close2);
      } else {
        return false;
      }
    }
    if (strs.contains(close3)) {
      final a = strs.remove(open3);
      if (a) {
        strs.remove(close3);
      } else {
        return false;
      }
    }

    return true;
  }
}
