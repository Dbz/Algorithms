# Given a binary tree, convert it to a doubly linked list without creating new nodes.
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

def binary_tree_to_linked_list(root)
  queue             = [root.left, root.right]
  current_node      = root
  current_node.left = nil

  while queue.length > 0
    next_node = queue.shift
    queue << next_node.left if next_node.left
    queue << next_node.right if next_node.right
    current_node.right, next_node.left = next_node, current_node
    current_node                       = next_node
  end
end
