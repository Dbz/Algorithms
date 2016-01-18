# Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
#
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false unless root
  if root.left || root.right
    return has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
  end
  
  return sum - root.val == 0
end
