# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} treeNode
# @return {Integer}

def minimum_depth_of_binary_tree(tree_node)
  tree_node.nil? ?
    0 :
    1 + [minimum_depth_of_binary_tree(tree_node.left), minimum_depth_of_binary_tree(tree_node.right)].min
end
