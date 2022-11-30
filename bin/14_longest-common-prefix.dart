void main() {
  final sol = Solution();
  print(sol.longestCommonPrefix(["flower", "flow", "flight"]));
  print(sol.longestCommonPrefix(["flower", "flower", "flower", "flower"]));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.length == 1) {
      return strs.first;
    }
    final r = <String>[];
    for (var i = 0; i < strs.length; i++) {
      final s = strs[i].split('');
      for (var j = 0; j < s.length; j++) {
        final u = s.take(j + i).join();

        if (u.isEmpty) {
          continue;
        }
        final start = RegExp("^$u");
        final con = <String>[];
        for (var k = 0; k < strs.length; k++) {
          final a = strs[k].contains(start);
          if (a) {
            con.add(u);
          }
        }
        if (con.length == strs.length && !r.contains(u)) {
          r.add(u);
        }
      }
    }
    r.sort((a, b) => b.length.compareTo(a.length));

    return r.isNotEmpty ? r.first : '';
  }

// * https://leetcode.com/problems/longest-common-prefix/solutions/2743359/dart-solution/?q=dart&orderBy=most_relevant
  String short(List<String> strs) {
    var common = '';
    var word = '';
    for (var char in strs[0].split('')) {
      word += char;
      for (var i = 1; i < strs.length; i++) {
        if (!strs[i].startsWith(word)) {
          return common;
        }
      }

      common += char;
    }
    return common;
  }
}
