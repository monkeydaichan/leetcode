void main() {
  final sol = Solution();
  print(sol.isSameTree(TreeNode(1, TreeNode(2), TreeNode(3)),
      TreeNode(1, TreeNode(2), TreeNode(3))));
}

class Solution {
  bool isSameTree(TreeNode? p, TreeNode? q) {
    if (p == null || q == null) {
      return p == q;
    }
    return p.val == q.val
        ? isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
        : false;
  }
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
