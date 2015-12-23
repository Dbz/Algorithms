require_relative 'node.rb'

class LinkedList
  include Enumerable
  attr_accessor :head, :tail, :length, :index
  
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
    @current.value
  end
  
  def []=(pos, value)
    
    return if pos < 0               # bounds check
    create_head if index == -1
    delta = pos > @index ? 1 : -1   # set direction
    
    until @index == pos             # traverse
      create_next_node if @index == @length - 1 # create missing nodes

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
