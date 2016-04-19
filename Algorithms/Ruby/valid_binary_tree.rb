MAX_INT = 99_999_999_999_999_999_999
LOW_INT = -99_999_999_999_999_999_999

def valid_binary_tree(root)
  stack = [[root, LOW_INT, MAX_INT]]

  while stack.length > 0
    node, low_bounds, high_bounds = stack.pop
    if node.val < low_bounds || node.val > high_bounds
      return false
    end

    if node.left
      stack.push([node.left, low_bounds, node.val])
    end

    if node.right
      stack.push([node.right, node.val, high_bounds])
    end
  end

  true
end
