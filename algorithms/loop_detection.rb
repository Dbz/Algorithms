# CtCI 6th Edition Problem 2.8
# Loop Detection: Given a circular linked list, implement an algorithm that returns the node at the
# beginning of the loop.
# DEFINITION
# Circular linked list: A (corrupt) linked list in which a node's next pointer points to an earlier node, so
# as to make a loop in the linked list.
# EXAMPLE
# Input: A -) B -) C -) D -) E -) C
# Output: C

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

# Loops through the list adding each node's hash to a set.
# Returns the first node whose hash is already in the set,
# or nil if no loops are found
# Loops through each element so it is O(n)
def detect_loop(list)
  current = list.head
  visited = Set.new
  until current.nil?
    return current if visited.include? current.hash
    visited << current.hash
    current = current.next
  end
  nil
end

