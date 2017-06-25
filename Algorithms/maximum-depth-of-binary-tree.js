/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 * 
 * @param {TreeNode} root
 * @return {number}
 */

var maximumDepthOfBinaryTree = function(treeNode) {
  return treeNode === null ?
    0 :
    1 + Math.max(maximumDepthOfBinaryTree(treeNode.left), maximumDepthOfBinaryTree(treeNode.right));
};
