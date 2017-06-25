def find_linked_list_cycle(list)
  return false unless list
  slow = list.head
  fast = list.head

  while fast && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
    if slow == fast
      break
    end
  end

  return false if fast.nil? || fast.next.nil?

  until slow == fast
    slow = head
    slow = slow.next
    fast = fast.next
  end

  fast
end
