# Topological sort works only for DAGs (Directed acyclic graphs).
# The objective of this sort is print the postorder sequence of DFS nodes.

class TopologicalSort
  attr_accessor :post_order

  def initialize(graph, s)
    @post_order = []
    @visited = []
    @graph = graph
    @source = s

    dfs
  end

  private
  def dfs(node)
    stack = [@source]

    while stack.length > 0
      node = stack.pop
      @graph[node].each do |child_node|
        unless @visited.include?(child_node)
          stack.push(child_node)
          visited.push(child_node)
        end
        @post_order << node
      end
    end
  end
end
