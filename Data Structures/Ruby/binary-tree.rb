class Node
  attr_accessor :parent, :left, :right, :data
  def initialize(data = nil, parent = nil, left = nil, right = nil)
    @parent, @left, @right, @data = parent, left, right, data
  end
end

class BinaryTree
  def initialize
    @root = Node.new
    @latest_nodes = [@root]
  end

  def insert data
    new_node = Node.new(data)
    parent = @latest_nodes.shift

    if parent.left.nil?
      parent.left = new_node
      @latest_nodes.unshift parent
    elsif parent.right.nil?
      parent.right = new_node
    else
      @latest_nodes.first.left = new_node
      @latest_nodes << new_node
    end
  end

  def delete data
    traverse_dfs { |node| node.data = nil if node.data == data }
  end

  def traverse_dfs &block
    ([@root] + dfs(@root)).map(&:data).compact.each do |data|
        block.call(data)
    end
  end

  def traverse_bfs &block
    bfs.map(&:data).compact.each do |data|
      block.call(data)
    end
  end

  private

  def dfs node
    nodes = []
    nodes << node.left if node.left
    nodes << node.right if node.right
    nodes + node.flat_map { |child| dfs child }
  end

  def bfs
    all_nodes = []
    queue = [@root]
    while queue.length > 0
      node = queue.shift
      all_nodes << node
      queue << node.left << node.right
    end
    all_nodes
  end
end
