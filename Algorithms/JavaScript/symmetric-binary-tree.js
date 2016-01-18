/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 *
 *
 * @param {TreeNode} root
 * @return {boolean}
 */
 
var isSymmetricBranch = function(left, right) {
  if (left === null) return right === null;
  if (right === null) return false;
  return (left.val == right.val) && isSymmetricBranch(left.left, right.right) && isSymmetricBranch(left.right, right.left);
};
var isSymmetric = function(root) {
  if (root === null) return true;
  return isSymmetricBranch(root.left, root.right);
};
