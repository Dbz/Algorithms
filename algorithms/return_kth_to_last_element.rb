# CtCI 6th Edition Problem 2.2
# Return Kth to Last: Implement an algorithm to find the kth to last element of a singly linked list. 

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
end

# Loops through all of the elements so it is O(n)
# Returns nil if there are less than k elements, or the kth to last node
def kth_to_last_element(head, k)
  # First pointer (tail) will be k nodes ahead of second. When tail hits the end,
  # second will be k elements from the end 
  tail            = head
  second          = head
  elements_apart  = 0
  until tail.next.nil?
    tail = tail.next
    # Increment second if they are k elements apart, or just increment elements apart
    elements_apart == k ? second = second.next : elements_apart += 1
  end
  # Return nil if there are less than k elements
  elements_apart == k ? second : nil
end

