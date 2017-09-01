# CtCI 6th Edition Problem 2.1
# Remove Dups: Write code to remove duplicates from an unsorted linked list.
# How would you solve this problem if a temporary buffer is not allowed?

require 'Set'

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

# Loops through each node so it is O(n)
# Removes duplicates in place for a singly linked list
def remove_duplicates(head)
  return unless head
  seen_data     = Set.new
  current_node  = head
  seen_data << current_node.data
  until current_node.next.nil?
    # Remove the next node if it has duplicate data
    if seen_data.include? current_node.next.data
      remove_next_node(current_node)
    else
      # Move to the next move
      seen_data << current_node.next.data
      current_node = current_node.next
    end
  end
end

def remove_next_node(current_node)
  deleted_node      = current_node.next
  current_node.next = current_node.next.next
  deleted_node.next = nil # Remove pointer for GC
end

