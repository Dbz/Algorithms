/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 *
 * @param {TreeNode} root
 * @return {TreeNode}
 */

var invertBinaryTree = function(root) {
  if (root == null) return null;

  var temp = root.left;
  root.left = invertTree(root.right);
  root.right = invertTree(temp);
  
  return root;
};
