class Node
  attr_accessor :value, :next_node, :previous_node
  
  def initialize(value = nil)
    @value = value
  end
  
  def next
    @next_node
  end
  
  def previous
    @previous_node
  end
  
end

class LinkedList
  include Enumerable
  attr_accessor :length, :index
  
  def initialize
    @current  = Node.new
    @length   = 1
    @index    = 0
  end
  
  def [](pos)
    return if pos >= length || pos < 0  # bounds check
    delta = pos > @index ? 1 : -1       # set direction
    until @index == pos                 # traverse
      @current = delta == 1 ? @current.next : @current.previous
      @index  += delta
    end
    @current.value
  end
  
  def []=(pos, value)
    
    return if pos < 0               # bounds check
    delta = pos > @index ? 1 : -1   # set direction
    
    until @index == pos             # traverse
      if @index == @length - 1      # create missing nodes
        node = Node.new
        node.previous_node  = @current
        @current.next_node  = node
        @length            += 1
      end
      
      @current = delta == 1 ? @current.next : @current.previous
      @index  += delta
    end

    @current.value = value
  end
  
  def each &block
    (0...@length).each do |x|
      block.call(self[x])
    end
  end
end
