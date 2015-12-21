class DFS

  attr_reader :graph
  def initialize(graph, s)
    @graph = graph
    @s = s
    @visited = []
    @edge_to = {}

    dfs(@graph, @s)
  end

  def dfs(graph, s)
    @visited << s

    @graph[s].each do |node|
      if !@visited.include?(node)
        dfs(graph, node)
        @edge_to[node] = s
      end
    end
  end

  def has_path_to?(v)
    @visited.include?(v)
  end

  def trace_path(v)
    return false unless has_path_to?(v)
    path = []

    while v != @s
      v = @edge_to[v]
      path.unshift(v)
    end

    path.unshift(@s)
    path
  end
end