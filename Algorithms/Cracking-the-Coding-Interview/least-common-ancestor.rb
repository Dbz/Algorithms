# find the least common ancestor in a Binary Search Tree
# using BST properties the LCA of n1 & n2 would be n1 < LCA < n2

def least_common_ancestor(root, n1, n2)
  return unless n1 && n2

  if root.data > n1 && root.data > n2
    return least_common_ancestor(root.left, n1, n2)
  elsif root.data < n1 && root.data < n2 
    return least_common_ancestor(root.right, n1, n2)
  end

  root
end
