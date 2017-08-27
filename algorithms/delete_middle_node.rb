# CtCI 6th Edition Problem 2.3
# Delete Middle Node: Implement an algorithm to delete a node in the middle (i.e., any node but
# the first and last node, not necessarily the exact middle) of a singly linked list, given only access to
# that node.
# EXAMPLE
# Input: the node c from the linked list a->b->c->d->e->f
# Result: nothing is returned, but the new linked list looks like a->b->d->e->f

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end

  def to_s
    data_str = ''
    current = self
    until current.nil?
      data_str << "->#{current.data}"
      current = current.next
    end
    data_str[2..data_str.size]
  end
end

# O(1) operation
def delete_middle_node(node)
  # This works by putting the next node's data into this node,
  # setting next to next.next, and then removing the next node.

  temp      = node.next
  node.data = node.next.data
  node.next = node.next.next
  temp.next = nil # Remove pointer for GC
  return nil
end

