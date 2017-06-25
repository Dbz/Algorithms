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

def maximum_depth_of_binary_tree(tree_node)
  if tree_node.nil?
    0
  else
    1 + [maximum_depth_of_binary_tree(tree_node.left), maximum_depth_of_binary_tree(tree_node.right)].max
  end
end
