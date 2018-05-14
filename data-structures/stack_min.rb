# CtCI 6th Edition Problem 3.2
# Stack Min: How would you design a stack which, in addition to push and pop, has a function min
# which returns the minimum element? Push, pop and min should all operate in 0(1) time.

# Keep track of the minimum element at each point in the stack. Then you don't need
# to calculate it when popping.
class Stack
  def initialize
    @stack  = nil
  end

  def push(el)
    new_min = (min.nil? || el < min) ? el : min
    @stack << [el, new_min]
  end

  def pop
    @stack.pop
  end

  def min
    @stack.last ? @stack.last[1] : nil
  end
end

