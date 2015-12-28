class Node
  attr_accessor :parent, :left, :right, :data
  def initialize(data = nil, parent = nil, left = nil, right = nil)
    @parent, @left, @right, @data = parent, left, right, data
  end
end

class BinaryTree
  attr_accessor :length

  def insert data
    return create_root(data) if @root.nil?
    new_node = Node.new(data)
    parent = @leaf_nodes.first

    if parent.left.nil?
      parent.left = new_node
    elsif parent.right.nil?
      parent.right = new_node
      @leaf_nodes.shift
    end

    @leaf_nodes << new_node
    @length += 1
  end

  def delete data
    dfs(@root).each do |node|
      if node.data == data
        @length -= 1
        node.data = nil
      end
    end
  end

  def traverse_dfs &block
    dfs(@root).map(&:data).compact.each { |data| block.call(data) }
  end

  def traverse_bfs &block
    bfs.map(&:data).compact.each { |data| block.call(data) }
  end

  private

  def create_root data
    @root       = Node.new(data)
    @length     = 1
    @leaf_nodes = [@root]
  end

  def dfs node
    nodes = []
    nodes << node.left if node.left
    nodes << node.right if node.right
    [node] + nodes.flat_map { |child| dfs child }
  end

  def bfs
    all_nodes = []
    queue = [@root]
    while queue.length > 0
      node = queue.shift
      all_nodes << node
      queue << node.left if node.left
      queue << node.right if node.right
    end
    all_nodes
  end
end
