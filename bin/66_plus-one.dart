void main() {
  final sol = Solution();
  print(sol.plusOne([1, 2, 3]));
}

class Solution {
  List<int> plusOne(List<int> digits) {
    if (digits.last < 9) {
      digits[digits.length - 1] = digits.last + 1;
      return digits;
    }
    String chars = '';
    for (var d in digits) {
      chars = chars + d.toString();
    }
    final sum = (BigInt.parse(chars) + BigInt.one).toString();
    return sum.split('').map((e) => int.parse(e)).toList();
  }
}
