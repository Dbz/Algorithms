class MinHeap
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def min
    @nodes.first
  end

  def extract_min
    @nodes.shift.tap do
      # Move the last node to the root
      # Then heapify down
      @nodes.unshift @nodes.pop unless @nodes.size.zero?
      heapify_down
    end
  end

  def insert(data)
    @nodes << data
    heapify_up
  end

  private

  # The children of node n are: 2n + 1 and 2n + 2
  # Returns [left_child, right_child]
  def children(index)
    [index * 2 + 1, index * 2 + 2]
  end

  # The parent of node n is: ceil(n / 2) - 1
  def parent(index)
    (index.to_f / 2).ceil - 1
  end

  def heapify_up
    # Swap the current_node (starting with last child) with it's parent if it is smaller
    previous_current_node = nil
    current_node          = @nodes.size - 1
    # When the current_node is not changing, then it has swapped as many times as it can
    until previous_current_node == current_node
      previous_current_node = current_node
      parent_node           = parent(current_node)
      
      # Bounds check for when the current_node is the root
      break if current_node.zero? 

      # Swap with the parent if the parent is bigger
      if @nodes[current_node] < @nodes[parent_node]
        @nodes[current_node], @nodes[parent_node] = @nodes[parent_node], @nodes[current_node]
        current_node = parent_node
      end
    end
  end

  def heapify_down
    # Swap the current_node (starting with root) with its smallest child until it's smaller than both of its children
    previous_current_node = nil
    current_node          = 0
    # When the current_node is not changing, then it has swapped as many times as it can
    until previous_current_node == current_node
      previous_current_node   = current_node
      left_child, right_child = children(current_node)

      # Bounds check for when current_node is one of the last two nodes
      break if right_child >= @nodes.size

      # If current_node is greater than either of its children
      if @nodes[current_node] > @nodes[left_child] || @nodes[current_node] > @nodes[right_child]
        # Swap with the smallest child
        if @nodes[left_child] <= @nodes[right_child]
          @nodes[current_node], @nodes[left_child] = @nodes[left_child], @nodes[current_node]
          current_node = left_child
        else
          @nodes[current_node], @nodes[right_child] = @nodes[right_child], @nodes[current_node]
          current_node = right_child
        end
      end
    end
  end
end

h = MinHeap.new
# h.nodes = [0, 1, 2, 3, 4, 5, 6]
(0..7).to_a.shuffle.each do |n|
  h.insert n
end

until h.nodes.empty?
  p h.extract_min
  # p h.nodes
end

