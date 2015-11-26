class Node
  include Enumerable

  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = null
    @right = null
  end

  def each(&block)
    left.each(&block) if left
    block.call(self)
    right.each(&block) if right
  end

  def <=>(other_node)
    value <=> other_node.value
  end

  def push(value)
    new_node = Node.new(value)
  end
end

root = Node.new(3)
root.left = Node.new(2)
root.right = Node.new(1)
root.each {|x| puts x.value }