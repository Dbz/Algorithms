/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {boolean}
 */
var height = function(node){
    if (node === null) return 0;
    return 1 + Math.max(height(node.left), height(node.right));
};

var isBalanced = function(root) {
    if(root===null || (root.left===null&&root.right===null)) return true;
    return Math.abs(height(root.left) - height(root.right)) <= 1 && isBalanced(root.left) && isBalanced(root.right) ? true : false;
};