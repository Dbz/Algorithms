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
        unless @visited.include?(child_node)
          queue.push(child_node)
          @visited.push(child_node)
          @edge_to[child_node] = node
        end
      end
    end
    false
  end

  def has_path_to(node)
    path = []
    while node != @s
      path.unshift(node)
      node = @edge_to[node]
    end
    path
  end
end

