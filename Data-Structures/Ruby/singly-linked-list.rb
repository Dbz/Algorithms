require_relative 'node.rb'

class LinkedList
  include Enumerable
  attr_accessor :length
  
  def initialize
    @length = 0
  end
  
  def [](pos)
    return nil if pos >= @length || pos < 0  # bounds check

    index         = 0
    current_node  = @head
    
    while index < pos
      current_node = current_node.next
      index += 1
    end
    current_node.data
  end
  
  def []=(index, data)
    return if index < 0
    create_head if @head.nil?

    i             = 0
    current_node  = @head
    while i < index
      create_next_node if i == @length - 1
      current_node = current_node.next
      i           += 1
    end
    current_node.data = data
  end

  def each &block
    current_node = @head
    (0...@length).each do
      block.call(current_node.data)
      current_node = current_node.next
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
    @head = Node.new
    @tail = @head
    @length = 1
  end

  def create_next_node
    @tail.next = Node.new
    @tail      = @tail.next
    @length   += 1
  end

end
