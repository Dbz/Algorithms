def has_path_sum(root, sum)
  return false unless root
  if root.left || root.right
    return has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
  end
  
  return sum - root.val == 0
end
