# CtCI 6th Edition Problem 2.4
# Partition: Write code to partition a linked list around a value x, such that all nodes less than x come
# before all nodes greater than or equal to x. lf x is contained within the list, the values of x only need
# to be after the elements less than x (see below). The partition element x can appear anywhere in the
# "right partition"; it does not need to appear between the left and right partitions.
# EXAMPLE
# Input: 3 -> 5 -> 8 -> 5 - > 10 -> 2 -> 1 [partition = 5)
# Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8

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

  def to_a
    @next.nil? ? [data] : [data] + @next.to_a
  end
end

# Loops through all the nodes so it is O(n)
def partition_linked_list(head, partition)
  # Plan is to have a left and right side. Go through the list and add the node to the left side or right side.
  left_head     = nil
  left_tail     = nil
  right_head    = nil
  right_tail    = nil
  current_node  = head

  until current_node.nil?
    if current_node.data < partition # Add to left partition
      if left_head.nil? # Create left head and tail on the first run
        left_head = current_node
        left_tail = current_node
      else # Add to the left tail
        left_tail.next = current_node
        left_tail = left_tail.next
      end
    else # Add to right partition
      if right_head.nil? # Create right head and tail on the first run
        right_head = current_node
        right_tail = current_node
      else # Add to the right tail
        right_tail.next = current_node
        right_tail = right_tail.next
      end
    end
    current_node = current_node.next
  end
  # Attach the two partitions and return the left head
  left_tail.next = right_head
  right_tail.next = nil
  left_head
end

