class Node
  attr_accessor :value, :next
  
  def initialize(value = nil)
    @value = value
  end
end

class LinkedList
  include Enumerable
  attr_accessor :length
  
  def initialize
    @head   = Node.new
    @length = 1
  end
  
  def [](pos)
    return if pos >= @length || pos < 0  # bounds check

    index         = 0
    current_node  = @head
    
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
    current_node  = @head
    while i < index
      if i == @length - 1
        node              = Node.new
        current_node.next = node
        @length          += 1
      end
      current_node = current_node.next
      i           += 1
    end
    current_node.value = value
  end
  
  def each &block
    current_node = @head
    (0...@length).each do |x|
      block.call(current_node.value)
      current_node = current_node.next
    end
  end
end
