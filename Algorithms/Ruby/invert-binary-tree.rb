# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
#
# @param {TreeNode} root
# @return {TreeNode}

def invert_binary_tree(root)
  root.right, root.left = invert_binary_tree(root.left), invert_binary_tree(root.right) unless root.nil?
  root
end

