# Refactor/rewrite this file
require 'byebug'

class Node

  attr_accessor :value, :next

  def initialize(val,next_in_line)
    @value = val
    @next = next_in_line
  end
end

class LinkedList

  attr_accessor :head
  def initialize(val)
      # Initialize a new node at the head
      @head = Node.new(val,nil)
  end
  
  def add(value)
      # Traverse to the end of the list
      # And insert a new node over there with the specified value
      current = @head
      while current.next != nil
          current = current.next
      end 
      current.next = Node.new(value,nil)
      self    
  end

  def delete(val)
    current = @head
    if current.value == val
        @head = @head.next
    else
      while current.next != nil
        current = current.next
        if current.value == val
          current.value = current.next.value || nil
          current.next = current.next.next
        end
      end
    end
    @head
  end
end


def list_palindrome(list)
  stack = []
  current = list.head

  while current
    stack.push(current.value)
    current = current.next
  end

  current = list.head
  while current 
    stack_temp = stack.pop
    return false if current.value != stack_temp
    current = current.next
  end
  true 
end

def list_check(list)
  return false unless list

  stack = []
  current = slow = fast = list.head

  while fast && fast.next != nil
    fast = fast.next.next 
    stack.push(slow.value)
    slow = slow.next
  end

  if fast != nil
    slow = slow.next
  end

  while slow != nil
    temp = stack.pop
    return false if slow.value != temp 
    slow = slow.next
  end

  true
end
