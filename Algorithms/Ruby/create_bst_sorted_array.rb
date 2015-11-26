def create_binary_tree(arr, arr_start, arr_end)
  return if arr_start > arr_end
  mid = arr_start + arr_end / 2

  root = Node.new(arr[mid])
  root.left = create_binary_tree(arr, arr_start, mid - 1);
  root.right = create_binary_tree(arr, mid + 1, arr_end);

  return root
end