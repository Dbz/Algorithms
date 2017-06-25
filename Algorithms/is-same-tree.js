/**
 * Given two binary trees, write a function to check if they are equal or not.
 * Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 *
 * @param {TreeNode} leftNode
 * @param {TreeNode} rightNode
 * @return {boolean}
 */
var isSameTree = function(leftNode, rightNode) {
  if (leftNode == null && rightNode == null) {
    return true;
  } else if (leftNode == null || rightNode == null) {
    return false;
  }
   
  var left = isSameTree(leftNode.left, rightNode.left);
  var right = isSameTree(leftNode.right, rightNode.right);
 
  return leftNode.val == rightNode.val && left && right;
};
