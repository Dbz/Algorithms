def Node
  attr_accessor :value
  attr_reader :next_node
  
  def initialize(value, next_node = nil)
    self.value      = value
    self.next_node  = next_node
  end
  
  def next
    self.next_node
  end
end

def LinkedList
  include Enumerable
  attr_accessor :head, :length
  
  def initialize
    self.head   = Node.new(nil, nil)
    self.length = 0
  end
  
  def [](pos)
    return if pos < length

    index = 0;
    current_node = self.head
    
    while index <= pos
      current_node = current_node.next
      index += 1
    end
    current_node.value
  end
  
  def []=(index, value)
  end
  
  def each &block
    current_node = self.head
    (0..length).each do |x| 
      block.call(current_node.value)
      current_node = current_node.next
    end
  end
end
    