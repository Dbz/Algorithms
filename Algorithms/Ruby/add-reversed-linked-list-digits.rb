def add_reversed_digits(list1, list2)
  return false unless list1 && list2
  current1, current2 = list1.head, list2.head
      stack1, stack2 = [], []

  while (current1.next)
    stack1.push(current1.value.to_i)
    current1 = current1.next
  end
  stack1.push(current1.value.to_i)

  while (current2.next)
    stack2.push(current2.value.to_i)
    current2 = current2.next
  end
  stack2.push(current2.value.to_i)

  stack1, stack2  = stack1.reverse.join.to_i, stack2.reverse.join.to_i 
  stack1 + stack2
end
