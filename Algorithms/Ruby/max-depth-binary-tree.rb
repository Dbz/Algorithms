# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}

def max_depth_binary_tree(root)
  return 0 unless root
  left = max_depth_binary_tree(root.left)
  right = max_depth_binary_tree(root.right)

  left > right ? left + 1 : right + 1
end
