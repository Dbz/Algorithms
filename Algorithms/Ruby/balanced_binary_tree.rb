def balanced_binary_tree(node)
  depths = []
  stack  = []

  stack.push([node, 0])

  while stack.length > 0
    node, depth = stack.pop
    if !node.left && !node.right
      unless depths.include?(depth)
        depths << depth
        if depths.length > 2 || (depths.length == 2 && (depth[0] - depth[1]).abs > 1)
          return false
        end
      end
    else
      stack.push([node.left, depth + 1]) if node.left
      stack.push([node.right, depth + 1]) if node.right
    end
  end

  true
end
