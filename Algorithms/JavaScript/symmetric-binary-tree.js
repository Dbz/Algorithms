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
 
var isSymSubtree = function(left, right){
    if (left === null) return right === null;
    if (right === null) return false;
    return (left.val == right.val) && isSymSubtree(left.left, right.right) && isSymSubtree(left.right, right.left);
};
var isSymmetric = function(root) {
    if (root === null) return true;
    return isSymSubtree(root.left, root.right);
};
