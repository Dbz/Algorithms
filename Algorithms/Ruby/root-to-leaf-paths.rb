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

def binary_tree_paths(root)
  trace_path(root, '', [])
end

def trace_path(node, path, result)
  return [] unless node
  path += node.val.to_s

  if !node.left && !node.right
    return result.push(path)
  else
    path += '->'
  end

  if node.left
    trace_path(node.left, path, result)
  end

  if node.right
    trace_path(node.right, path, result)
  end
end
