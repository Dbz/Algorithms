require_relative 'node.rb'

class LinkedList
  include Enumerable
  attr_accessor :length
  
  def initialize
    @length = 0
    @index  = -1
  end
  
  def [](pos)
    return if pos >= length || pos < 0  # bounds check
    delta = pos > @index ? 1 : -1       # set direction
    until @index == pos                 # traverse
      @current = delta == 1 ? @current.next : @current.previous
      @index  += delta
    end
    @current.data
  end
  
  def []=(pos, data)
    
    return if pos < 0               # bounds check
    create_head if index == -1
    delta = pos > @index ? 1 : -1   # set direction
    
    until @index == pos             # traverse
      create_next_node if @index == @length - 1 # create missing nodes

      @current = delta == 1 ? @current.next : @current.previous
      @index  += delta
    end

    @current.data = data
  end

  def <<(value)
    self[self.length] = value
  end
  
  def each &block
    (0...@length).each do |x|
      block.call(self[x])
    end
  end

  def first
    @head.data
  end

  def last
    @tail.data
  end

  private

  def create_head
    @head   = Node.new
    @tail   = @head
    @index  = 0
    @length = 1
  end

  def create_next_node
    @tail.next = Node.new
    @tail      = @tail.next
    @length   += 1
  end
end
