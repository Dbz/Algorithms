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

def maximum_depth_of_binary_tree(treeNode)
  treeNode.nil? ? 0 : 1 + [maximum_depth_of_binary_tree(treeNode.left), maximum_depth_of_binary_tree(treeNode.right)].max
end
