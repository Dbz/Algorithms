# Topological ordering of a directed graph is a linear ordering of
# its vertices such that for every directed edge uv from vertex u to vertex v,
# u comes before v in the ordering.

class Dag
  attr_accessor :nodes

  def topological_sort
    # Tarjan's algorithm

    @sorted_nodes   = []
    @unmarked_nodes = @nodes.dup

    visit(@unmarked_nodes.sample) while @unmarked_nodes.count > 0

    @sorted_nodes
  end

  def visit(node)
    # Depth First Search

    unless @unmarked_nodes.include? node
      node.neighbors.each { |neighbor| visit(neighbor) }

      @unmarked_nodes.delete(node)
      @sorted_nodes.unshift node
    end
  end
end

class Node
  attr_accessor :neighbors

  def initialize(neighbors)
    @neighbors = neighbors
  end
end
