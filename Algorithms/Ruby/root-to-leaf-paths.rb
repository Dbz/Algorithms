# Given a binary tree, return all root-to-leaf paths.
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
# @return {String[]}

def root_to_leaf_paths(root, current_path)
  paths = []

  paths << root.left.nil? ? current_path : root_to_leaf_paths(root.left, current_path + "->#{root.left.val}")
  paths << root.right.nil? ? current_path : root_to_leaf_paths(root.right, current_path + "->#{root.right.val}")

  paths
end
