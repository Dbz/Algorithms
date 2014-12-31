class Node
  attr_accessor :value, :next_node
  
  def initialize(options = {})
    self.value = options[value]
  end
  
  def next
    self.next_node
  end
  
  def set_next_node(node)
    self.next_node = node
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
    return if pos >= length

    index = 0;
    current_node = self.head
    
    while index < pos
      current_node = current_node.next
      index += 1
    end
    current_node.value
  end
  
  def []=(index, value)
    i = 0
    current_node = self.head
    while i < index
      if i == self.length - 1
        node = Node.new
        current_node.set_next_node(node)
        self.length += 1
      end
      current_node = current_node.next
      i += 1
    end
    current_node.value = value
  end
  
  def each &block
    current_node = self.head
    (0..length).each do |x| 
      block.call(current_node.value)
      current_node = current_node.next
    end
  end
end

# l = LinkedList.new
# l[4] = 55
# p l[4]