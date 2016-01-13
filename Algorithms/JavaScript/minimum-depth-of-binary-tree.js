/**
 * Given a binary tree, find its minimum depth.
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 *
 * @param {TreeNode} treeNode
 * @return {number}
 */

var minimumDepthOfBinaryTree = function(treeNode) {
  return treeNode === null ?
    0 :
    1 + Math.min(minimumDepthOfBinaryTree(treeNode.left), minimumDepthOfBinaryTree(treeNode.right));
};
