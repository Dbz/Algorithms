# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

def invert_binary_tree(root)
  return unless root
  temp = root.right
  root.right = invert_binary_tree(root.left)
  root.left = invert_binary_tree(root.right)
  root
end
