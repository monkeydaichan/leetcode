void main() {
  final sol = Solution();
  print(sol.romanToInt('MCMXCIV'));
  print(sol.romanToInt('III'));
  print(sol.romanToInt('LVIII'));
}

class Solution {
  final symbolsMap = <String, int>{
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };
  int romanToInt(String s) {
    var roman = 0;
    for (var i = 0; i < s.length; i++) {
      final str = s[i];
      if (i != s.length - 1) {
        final next = s[i + 1];
        if (str == 'I' && (next == 'V' || next == 'X')) {
          roman += (symbolsMap[next]! - symbolsMap[str]!);
          continue;
        }
        if (str == 'X' && (next == 'L' || next == 'C')) {
          roman += (symbolsMap[next]! - symbolsMap[str]!);
          continue;
        }
        if (str == 'C' && (next == 'D' || next == 'M')) {
          roman += (symbolsMap[next]! - symbolsMap[str]!);
          continue;
        }
      }

      if (i != 0) {
        final before = s[i - 1];
        if ((str == 'M' || str == 'D') && before == 'C') {
          continue;
        }
        if ((str == 'L' || str == 'C') && before == 'X') {
          continue;
        }
        if ((str == 'V' || str == 'X') && before == 'I') {
          continue;
        }
      }

      roman += symbolsMap[str]!;
    }
    return roman;
  }
}
