require_relative 'singly-linked-list'

class LinkedStack < LinkedList

  def empty?
    @length == 0
  end

  def push data
    new_head      = Node.new(data)
    new_head.next = @head
    @length      += 1
    @head         = new_head
  end

  def pop
    return nil if empty?
    data    = @head.data
    @head   = @head.next
    @length -= 1
    data
  end

  def peek
    self[0]
  end
end
