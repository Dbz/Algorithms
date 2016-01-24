def palindrome?(head)
  stack = []
  slow_runner = fast_runner = head

  while !fast_runner.nil? && !fast_runner.next.nil?
    stack.push(slow_runner.val)
    fast_runner = fast_runner.next.next
    slow_runner = slow_runner.next
  end
  
  unless fast_runner.nil?
    slow_runner = slow_runner.next
  end

  until slow_runner.nil?
    temp = stack.pop
    return false unless slow_runner.val == temp
    slow_runner = slow_runner.next
  end

  true
end
