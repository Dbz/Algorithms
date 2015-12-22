class Node
  attr_accessor :value, :next
  
  def initialize(value = nil)
    self.value = value
  end
end

class LinkedList
  include Enumerable
  attr_accessor :head, :length
  
  def initialize
    self.head   = Node.new
    self.length = 1
  end
  
  def [](pos)
    return if pos >= length || pos < 0  # bounds check

    index         = 0;
    current_node  = self.head
    
    while index < pos
      current_node = current_node.next
      index += 1
    end
    current_node.value
  end
  
  def []=(index, value)
    # creates missing nodes
    return if index < 0
    
    i             = 0
    current_node  = self.head
    while i < index
      if i == self.length - 1
        node = Node.new
        current_node.next_node = node
        self.length += 1
      end
      current_node = current_node.next
      i           += 1
    end
    current_node.value = value
  end
  
  def each &block
    current_node = self.head
    (0...self.length).each do |x| 
      block.call(current_node.value)
      current_node = current_node.next
    end
  end
end

# l = LinkedList.new
# l[1] = 10
# l[4] = 55
#
# l.each do |value|
#   puts value
# end