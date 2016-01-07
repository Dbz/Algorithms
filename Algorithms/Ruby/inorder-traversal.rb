# Given a binary tree, return the inorder traversal of its nodes' values.
#
# Definition for a binary tree node.
# Given a binary tree, return the inorder traversal of its nodes' values.
#
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
  res = []
  recursive_dfs(root, res)
  res
end

def recursive_dfs(root, res)
  return [] unless root
  recursive_dfs(root.left, res) if root.left
  res << root.val
  recursive_dfs(root.right, res) if root.right
end

def iterative_inorder_dfs(root)
  result, stack = [], [root]

  while stack.length > 0
    node = stack.pop
    stack.push(node.left) if node.left
    result << node.val
    stack.push(node.right) if node.right
  end

  result
end
