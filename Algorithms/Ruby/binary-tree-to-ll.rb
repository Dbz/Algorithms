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

def convert_bst(root)
  queue = [root]
   prev = nil

  while queue.length > 0
    node = queue.unshift
    queue.push(node.left) if node.left
    node.left = prev
    queue.push(node.right) if node.right
    node.right = queue.first
    prev = node
  end
end


# in-order traversal, pointing the left pointer to the previous 
# node and right pointer to next in queue.