# CtCI 6th Edition Problem 3.3
# Stack of Plates: Imagine a (literal) stack of plates. If the stack gets too high, it might topple.
# Therefore, in real life, we would likely start a new stack when the previous stack exceeds some
# threshold. Implement a data structure SetOfStacks that mimics this. SetOfStacks should be
# composed of several stacks and should create a new stack once the previous one exceeds capacity.
# SetOfStacks. push () and SetOfStacks. pop () should behave identically to a single stack
# (that is, pop ( ) should return the same values as it would if there were just a single stack).
# FOLLOW UP
# Implement a function popAt (int index) which performs a pop operation on a specific sub-stack. 

class Stack
  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def pop
    @stack.pop
  end
end

class SetOfStacks
  def initialize(stack_size)
    @max_stack_size = stack_size
    @last_size      = [0]
    @stacks         = [Stack.new]
  end

  def push(el)
    if @last_size.last == @max_stack_size
      @stacks << Stack.new
      @last_size << 0
    end
    @last_size[-1] += 1
    @stacks.last.push el
  end

  def pop
    return nil if @stacks.size == 1 && @last_size.last == 0
    if @last_size.last == 0
      @stacks.pop
      @last_size.pop
    end
    @last_size[-1] -= 1
    @stacks.last.pop
  end

  def pop_at(index)
    return nil if @last_size[index].zero?
    @last_size[index] -= 1
    @stacks[index].pop
  end
end

