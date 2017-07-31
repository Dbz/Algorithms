# CtCI 6th Edition Problem 3.5
# Sort Stack: Write a program to sort a stack such that the smallest items are on the top. You can use
# an additional temporary stack, but you may not copy the elements into any other data structure
# (such as an array). The stack supports the following operations: push, pop, peek, and isEmpty. 

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
    return nil if is_empty?
    @size -= 1
    @stack.pop
  end

  def peek
    @stack.last
  end

  def is_empty?
    @size.zero?
  end

  # Sorts so that the smallest items are on top
  # 
  def sort
    return self if is_empty?
    temp = Stack.new
    temp.push pop
    until is_empty?
      el = pop
      if el <= temp.peek
        temp.push el
      else
        push temp.pop until temp.is_empty? || temp.peek <= el
        temp.push el
      end
    end
    temp
  end
end

