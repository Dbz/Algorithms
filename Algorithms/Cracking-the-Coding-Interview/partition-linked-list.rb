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

def print_list(temp)
  current = temp.head
  i = 1
  while current.next
    puts "#{current.value}"
    current = current.next
    i += 1
  end
  puts "#{current.value}"
end

def partition_linked_temp(list, n)
  return false unless list || n
  l_start = lower = Node.new(0, nil)
  g_start = greater = Node.new(0, nil)

  current = list.head
  while (current)
    temp = Node.new(current.value, nil)
    if current.value <= n
      lower.next = temp
      lower = lower.next
    else 
      greater.next = temp
      greater = greater.next
    end
    current = current.next
  end

  current = l_start
  while current.next
    current = current.next
  end
  current.next = g_start.next

  l_start.next
end

# walk over linked list
# if the value is greater than val
# push it to temp end and remove it from head
# at the end concat temp_end to head


