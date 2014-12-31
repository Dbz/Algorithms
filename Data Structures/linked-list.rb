def Node
  attr_accessor :value
  attr_reader :next_node
  
  def initialize(options = {})
    self.value      = options.value
    self.next_node  = options.next_node
  end
  
  def next
    self.next_node
  end
  
  def next(node)
    self.next_node = node
  end
end

def LinkedList
  include Enumerable
  attr_accessor :head, :length
  
  def initialize
    self.head   = Node.new
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
    i = 1
    current_node = self.head
    while i <= index
      if i >= length
        node = Node.new
        current_node.next(node)
        length += 1
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
    