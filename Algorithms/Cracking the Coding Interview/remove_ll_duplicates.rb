def remove_ll_duplicates(root)
	return false unless root
	seen = {}

	current = root
	while current
		if seen[current.val]
			remove_node(current)
		else
			seen[current.val] = true
			current = current.next
		end
	end
end

def remove_node(node)
	node.val = node.next.val || nil
	node.next = node.next.next
end
