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

def recursive_preorder_traversal(root)
  result = []
  dfs(root, result)
  result
end

def dfs(root, res)
  if root
    res << root.val
    dfs(root.left, res) if root.left
    dfs(root.right, res) if root.right
  end
end

def iterative_preorder_traversal(root)
  result, stack = [], [root]

  while stack.length
    node = stack.pop
    result << node.val
    stack.push(node.left) if node.left
    stack.push(node.right) if node.right
  end

  result
end
