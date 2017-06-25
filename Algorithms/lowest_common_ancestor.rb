# Find the lowest common ancestor in a Binary Tree.
# The lowest common ancestor of two nodes v and w in a tree is the lowest (i.e. deepest) node
# that has both v and w as descendants.

def lowest_common_ancestor(node1, node2)
  parents = Set.new
  parent1 = node1.parent
  parent2 = node2.parent
  until parents.include?(parent1) || parents.include?(parent2)
    parents.merge [parent1, parent2]
    parent1 = parent1.parent
    parent2 = parent2.parent
  end
  parents.include? parent1 ? parent1 : parent2
end
