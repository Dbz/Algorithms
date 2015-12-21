def bfs_tree(node)
  queue = [node]

  while(queue.size != 0)
    n = queue.shift
    puts n.value
    n.children.each do |child|
      queue.push(child)
    end
  end
end

def bfs_binary_tree(node)
  queue = [node]

  while(queue.size != 0)
    n = queue.shift
    puts n.value
    queue.push(n.left) if n.left
    queue.push(n.right) if n.right
  end
end

