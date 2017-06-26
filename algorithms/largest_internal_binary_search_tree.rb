require_relative '../data-structures/tree_node'

# Given a binary tree, return its largest internal binary search tree.

# @param {TreeNode} root
# @return {TreeNode.val[]}

def largest_internal_binary_search_tree(root)
  binary_search_trees = []
  nodes_to_visit      = [root]
  while nodes_to_visit.count > 0
    current_root                            = nodes_to_visit.pop
    current_tree, additional_nodes_to_visit = current_binary_search_tree(current_root)
    binary_search_trees << current_tree unless current_tree.count == 1
    nodes_to_visit += additional_nodes_to_visit
  end
  binary_search_trees.max_by(&:count)
end

# @param {TreeNode} root
# @return {[TreeNode[], TreeNode[]]}

def current_binary_search_tree(root)
  current_tree    = []
  unvisited_nodes = [] # Nodes to call current_binary_search_tree on from largest_internal_binary_search_tree
  valid_children  = []

  loop do
    if valid_node? root
      current_tree << root
      if valid_node? root.left
        valid_children << root.left
      elsif !root.left.nil?
        unvisited_nodes << root.left
      end

      if valid_node? root.right
        valid_children << root.right
      elsif !root.right.nil?
        unvisited_nodes << root.right
      end

      break if valid_children.count == 0

      root = valid_children.shift
    else
      unvisited_nodes << root.left unless root.left.nil?
      unvisited_nodes << root.right unless root.right.nil?
      break
    end
  end

  [current_tree, unvisited_nodes]
end

def valid_node?(node)
  # The binary search tree property states that the key in each node must be greater than all
  # keys stored in the left sub-tree, and smaller than all keys in right sub-tree.

  if !node || (node.left && node.data <= node.left.data) || (node.right && node.data >= node.right.data)
    false
  else
    true
  end
end
