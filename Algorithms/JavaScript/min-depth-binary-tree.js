/**
 * Given a binary tree, find its minimum depth.
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 *
 * @param {TreeNode} root
 * @return {number}
 */
var minDepth = function(root) {
  if (root === null) {
    return 0;
  } else if (root.left === null && root.right === null) {
    return 1;
  } else if (root.left === null) {
    return 1 + minDepth(root.right);
  } else if (root.right === null) {
    return 1 + minDepth(root.left);
  } else {
    return 1 + Math.min(minDepth(root.left), minDepth(root.right));
  }
};
