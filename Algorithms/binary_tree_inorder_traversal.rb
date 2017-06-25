# Given a binary tree, return the inorder traversal of its nodes' values.
#
# Definition for a binary tree node:
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}

def inorder_traversal(root)
  # inorder tree traversal:
  # 1) traverse the left subtree
  # 2) display the data of the current element
  # 3) traverse the right subtree

  values = []
  values << traverse_binary_tree(root.left) if root.left
  values = [root.value]
  values << traverse_binary_tree(root.right) if root.right
  values
end
