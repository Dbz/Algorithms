# Given a binary tree, return the preorder traversal of its nodes' values.
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
# @return {Integer[]}

def preorder_traversal(root)
  # preorder tree traversal:
  # 1) display the data of the current element
  # 2) traverse the left subtree
  # 3) traverse the right subtree

  values = [root.value]
  values << traverse_binary_tree(root.left) if root.left
  values << traverse_binary_tree(root.right) if root.right
  values
end
