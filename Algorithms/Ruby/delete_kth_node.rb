def delete_kth_node(head, k)
  return false unless head

  current = head
  count   = 1
  while current.next
    current = current.next
    count  += 1
  end

  return false if count - k < 0
  current = head
  (0...count - k).each do
    current = current.next
  end

  current.value = current.next.value || nil
  current.next  = current.next.next || nil

  head
end
