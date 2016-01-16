# Will find the shortest path between a source node and any other node in the graph.
# https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm#Using_a_priority_queue

def dijkstra(graph, source_node)
  priority_queue = PriorityQueue.new

  distance = Hash.new(Float::INFINITY)
  distance[source_node] = 0

  path = {}

  graph.nodes.each { |node| priority_queue.add_with_priority(node, distance[node]) }

  while priority_queue.count > 0
    current_node = priority_queue.extract_min
    current_node.neighbors.each do |node|
      current_distance = distance[current_node] + 1
      if current_distance < distance[node]
        distance[node] = current_distance
        path[node] = current_node
        priority_queue.decrease_priority(node, current_distance)
      end
    end
  end

  [distance, path]
end
