class Node
  attr_accessor :parent, :left, :right, :data
  def initialize(data = nil, parent = nil, left = nil, right = nil)
    @parent = parent
    @left   = left
    @right  = right
    @data   = data
  end
end

class BinaryTree
  attr_accessor :length

  def insert(data)
    return create_root(data) if @root.nil?
    new_node = Node.new(data)
    parent   = @leaf_nodes.first

    if parent.left.nil?
      parent.left = new_node
    elsif parent.right.nil?
      parent.right = new_node
      @leaf_nodes.shift
    end

    @leaf_nodes << new_node
    @length += 1
  end

  def delete(data)
    dfs.each do |node|
      if node.data == data
        @length  -= 1
        node.data = nil
      end
    end
  end

  def traverse_dfs(node = @root, &block)
    yield node.data unless node.data.nil?
    traverse_dfs(node.left, &block) if node.left
    traverse_dfs(node.right, &block) if node.right
  end

  def traverse_bfs
    queue = [@root]
    while queue.length > 0
      node = queue.shift
      yield node.data if node.data
      queue << node.left if node.left
      queue << node.right if node.right
    end
  end

  private

  def create_root(data)
    @root       = Node.new(data)
    @length     = 1
    @leaf_nodes = [@root]
  end

  def dfs(node = @root)
    nodes = []
    nodes << node unless node.data.nil?
    nodes += dfs(node.left) if node.left
    nodes += dfs(node.right) if node.right
    nodes
  end
end
