# CtCI 6th Edition Problem 2.6
# Palindrome: Implement a function to check if a linked list is a palindrome. 

class Node
  attr_accessor :data, :next, :prev
  def initialize(data)
    @data = data
    @next = nil
    @prev = nil
  end

  def to_a
    @next.nil? ? [data] : [data] + @next.to_a
  end
end

class LinkedList
  attr_accessor :length, :head, :tail
  def initialize
    @length = 0
    @head   = nil
    @tail   = nil
  end

  def add(value)
    if @tail.nil?
      @head = Node.new(value)
      @tail = @head
    else
      @tail.next      = Node.new(value)
      @tail.next.prev = @tail
      @tail           = @tail.next
    end
    @length += 1
    self
  end

  def to_a
    @head.to_a
  end
end

# I CHEATED by making my list doubley-linked. I check the character at opposite ends of the list. They must always be the same.
# This could be optimized for speed by exiting when they hit a previously visited node.
# Loops through the entire list making this O(n)
def doubly_linked_list_palindrome?(linked_list)
  start_to_end = linked_list.head
  end_to_start = linked_list.tail
  until start_to_end.next.nil?
    return false unless start_to_end.data == end_to_start.data
    start_to_end = start_to_end.next
    end_to_start = end_to_start.prev
  end
  true
end

# Pushes values from the first half of the list onto a stack and
# compares the second half of the list to values on the stack
def singly_linked_list_palindrome?(linked_list)
  length        = linked_list.length
  visited_data  = []
  current_node  = linked_list.head
  # Iterate through list and add to stack
  (length.to_f / 2).floor.times do # Integer division is already floored. Just for clarity though
    visited_data.push current_node.data
    current_node = current_node.next
  end

  # Middle value of odd length palindrome doesn't matter
  current_node = current_node.next if length.odd?

  # Pop values from the stack and compare to second half of list
  (length - (length.to_f / 2).ceil).times do
    return false unless visited_data.pop == current_node.data
    current_node = current_node.next
  end
  true
end

