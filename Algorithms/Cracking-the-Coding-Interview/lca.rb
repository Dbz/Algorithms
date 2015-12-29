# find the least common ancestor in a Binary Search Tree
# using BST properties the LCA of n1 & n2 would be n1 < LCA < n2

def lca_bst(root, n1, n2)
  return unless n1 && n2

  if root.data > n1 && root.data > n2
    return lca_bst(root.left, n1, n2)
  elsif root.data < n1 && root.data < n2 
    return lca_bst(root.right, n1, n2)
  end

  root
end
