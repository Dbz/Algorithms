# Given a binary tree, return its largest internal BST.
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

class MinMax
  attr_accessor :min, :max, :isBST, :size
  def initialize(min = Float::MIN, max = Float::MAX, isBST = false, size = 1)
    @isBST = isBST
    @size = size
    @min = min
    @max = max
  end
end

def largest_bst_in_bt(root)
  return MinMax.new unless root

  left_min_max = largest_bst_in_bt(root.left)
  right_min_max = largest_bst_in_bt(root.right)
  current_min_max = MinMax.new

  # if either of left or right subtree says its not BST or the data
  # of this node is not greater/equal than max of left and less than min of right
  # then subtree with this node as root will not be BST. 
  # Return false and max size of left and right subtree to parent

  if !left_min_max.isBST || !right_min_max.isBST || (left_min_max.max > root.val || right_min_max.min <= root.val)
    current_min_max.isBST = false
    current_min_max.size = [left_min_max.size, right_min_max.size].max
    return current_min_max
  end

  # if we reach this point means subtree with this node as root is BST.
  # Set isBST as true. Then set size as size of left + size of right + 1.
  # Set min and max to be returned to parent.
  current_min_max.isBST = true
  current_min_max.size = left_min_max.size + right_min_max.size + 1

  # if root.left is null then set root.data as min else
  # take min of left side as min
  current_min_max.min = root.left ? right_min_max.max : root.val

  # if root.right is null then set root.data as max else
  # take max of right side as max.
  current_min_max.max = root.right ? right_min_max.max : root.val
  current_min_max.size
end

