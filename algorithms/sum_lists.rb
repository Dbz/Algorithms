# CtCI 6th Edition Problem 2.5
# Sum Lists: You have two numbers represented by a linked list, where each node contains a single
# digit. The digits are stored in reverse order, such that the 1 's digit is at the head of the list. Write a
# function that adds the two numbers and returns the sum as a linked list. 
# EXAMPLE
# Input: (7-> 1 -> 6) + (5 -> 9 -> 2).That is 617 + 295.
# Output: 2 -> 1 -> 9. That is, 912. 

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end

  def to_s
    data_str = ''
    current = self
    until current.nil?
      data_str << "->#{current.data}"
      current = current.next
    end
    data_str[2..data_str.size]
  end

  def to_a
    @next.nil? ? [data] : [data] + @next.to_a
  end
end

# Lists come in backwards e.g. 125 comes in as 5->2->1
# Loops through both lists and then the result. O(a + b)
def sum_lists(head1, head2)
  # Numbers are forward e.g. 5->2->1 turns into 125
  number1 = list_to_string(head1)
  number2 = list_to_string(head2)

  result  = (number1.to_i + number2.to_i).to_s
  head    = Node.new(result[-1].to_i)
  tail    = head

  # Loop through all numbers except the head from the end of the list to the beginning
  # in order to reverse the result e.g. '125' turns into 5->2->1
  (result.size - 2).downto(0) do |x|
    tail.next = Node.new(result[x].to_i)
    tail = tail.next
  end
  head
end

# Returns a number as a string
# List comes in backwards, and numbers are forwards
# e.g. 5->2->1 turns into '125'
# Loops through the string so it is O(n)
def list_to_string(head)
  number = ''
  until head.nil?
    number.prepend head.data.to_s
    head = head.next
  end
  number
end

