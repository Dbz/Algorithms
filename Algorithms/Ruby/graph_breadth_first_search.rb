class BFS
  attr_accessor :graph, :s, :visited, :edge_to

  def initialize(graph, s)
    @graph = graph
    @s = s
    @visited = [@s]
    @edge_to = {}

    bfs
  end

  def bfs
    queue = [@s]

    while queue.length > 0
      node = queue.shift
      @graph[node].each do |child_node|
        next if @visited.include?(child_node)
        queue.push(child_node)
        @visited << child_node
        @edge_to[child_node] = node
      end
    end
  end

  def path_to?(v)
    @visited.include?(v)
  end

  def shortest_path(v)
    stack = [v]

    while v != @s
      v = @edge_to[v]
      stack.push(v)
    end

    stack.push(@s)
  end
end
