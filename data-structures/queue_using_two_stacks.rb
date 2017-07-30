# CtCI 6th Edition Problem 3.4
# Queue via Stacks: Implement a MyQueue class which implements a queue using two stacks. 

class Stack
  attr_reader :size

  def initialize
    @stack  = []
    @size   = 0
  end

  def push(el)
    @size += 1
    @stack << el
  end

  def pop
    @size -= 1
    @stack.pop
  end
end

class MyQueue
  def initialize
    @push_stack = Stack.new
    @pop_stack  = Stack.new
  end

  def add(item)
    @push_stack.push item
  end

  # Pop the push stack onto the pop stack reversing the data in the stack.
  # Then return what is popped from the pop stack which is the first element added to the queue.
  # Then pop the pop stack back onto the push stack reversing the data again to how it was.
  # O(n) operation
  def remove()
    return nil if @push_stack.size.zero?
    @push_stack.size.times { @pop_stack.push @push_stack.pop }
    @pop_stack.pop.tap { @pop_stack.size.times { @push_stack.push @pop_stack.pop } }
  end
end

