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

def min_depth_binary_tree(root)
  return 0 unless root
  return 1 unless root.left && root.right
  return 1 + min_depth_binary_tree(root.left) unless root.right
  return 1 + min_depth_binary_tree(root.right) unless root.left

  1 + [min_depth_binary_tree(root.left), min_depth_binary_tree(root.right)].min
end
