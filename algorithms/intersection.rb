# CtCI 6th Edition Problem 2.7
# Intersection: Given two (singly) linked lists, determine if the two lists intersect. Return the intersecting
# node. Note that the intersection is defined based on reference, not value. That is, if the kth
# node of the first linked list is the exact same node (by reference) as the jth node of the second
# linked list, then they are intersecting.

require 'Set'

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

# Iterate through the lists storing the hash of each node in the first list in a set. 
# Return the first node from the second list who's hash is already in the set, or return nil
# It loops through each list, so it is O(a + b)
def intersection(list1, list2)
  current1 = list1.head
  current2 = list2.head
  visited = Set.new
  until current1.nil?
    visited << current1.hash
    current1 = current1.next
  end
  until current2.nil?
    return current2 if visited.include? current2.hash
    current2 = current2.next
  end
  nil
end

