# needs refactoring
class BFS
  def initialize(graph, s)
    @graph = graph
    @s = s
    @visited = [@s]
    @edge_to = {}
  end

  def bfs(target)
    return true if target == @s
    queue = [@s]
    while queue.length > 0
      node = queue.shift
      @graph[node].each do |child_node|
        return true if child_node == target
        next if @visited.include? child_node
        queue.push(child_node)
        @visited.push(child_node)
        @edge_to[child_node] = node
      end
    end
    false
  end

  def path_to?(node)
    path = []
    until node == @s
      path.unshift(node)
      node = @edge_to[node]
    end
    path
  end
end
