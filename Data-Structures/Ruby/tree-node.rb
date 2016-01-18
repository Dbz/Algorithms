class Node
  attr_accessor :left, :right, :data

  def initialize(data)
    self.data = data
  end

  def to_s
    "(Data: #{@data}) : (Left: #{@left&.data}) : (Right: #{@right&.data})"
  end

  def ==(node)
    self.data == node.data
  end
end
