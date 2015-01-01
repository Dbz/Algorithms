class Node
  attr_accessor :value, :next_node, :previous_node
  
  def initialize(value = nil)
    self.value = value
  end
  
  def next
    self.next_node
  end
  
  def previous
    self.previous_node
  end
  
end

class LinkedList
  include Enumerable
  attr_accessor :current, :length, :index
  
  def initialize
    self.current  = Node.new
    self.length   = 1
    self.index    = 0
  end
  
  def [](pos)
    return if pos >= length || pos < 0  # bounds check
    delta = pos > self.index ? 1 : -1   # set direction
    until self.index == pos             # traverse
      self.current = delta == 1 ? self.current.next : self.current.previous
      self.index  += delta
    end
    self.current.value
  end
  
  def []=(pos, value)
    
    
    return if pos < 0                   # bounds check
    delta = pos > self.index ? 1 : -1   # set direction
    
    until self.index == pos             # traverse
      if self.index == self.length - 1  # create missing nodes
        node = Node.new
        node.previous_node      = self.current
        self.current.next_node  = node
        self.length            += 1
      end
      
      self.current = delta == 1 ? self.current.next : self.current.previous
      self.index  += delta
    end

    self.current.value = value
  end
  
  def each &block
    (0...self.length).each do |x|
      block.call(self[x])
    end
  end
end

# l = LinkedList.new
# l[0] = "me"
# l[1] = 10
# l[4] = 55
#
# l.each do |value|
#   puts value
# end