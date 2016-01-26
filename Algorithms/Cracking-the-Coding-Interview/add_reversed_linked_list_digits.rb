def add_reversed_digits(list1, list2)
  return false unless list1 && list2
  current1 = list1.head
  current2 = list2.head
  stack1   = []
  stack2   = []

  while current1.next
    stack1 << current1.value.to_i
    current1 = current1.next
  end
  stack1 << current1.value.to_i

  while current2.next
    stack2 << current2.value.to_i
    current2 = current2.next
  end
  stack2 << current2.value.to_i

  stack1 = stack1.reverse.join.to_i
  stack2 = stack2.reverse.join.to_i
  stack1 + stack2
end
