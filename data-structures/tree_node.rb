class Node
  attr_accessor :left, :right, :data

  def initialize(data)
    self.data = data
  end

  def to_s
    "(Data: #{@data}) : (Left: #{@left&.data}) : (Right: #{@right&.data})"
  end

  def ==(other)
    data == other.data
  end
end
