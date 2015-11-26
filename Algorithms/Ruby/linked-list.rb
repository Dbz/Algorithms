require 'minitest/autorun'

class LinkedStack
  class ElementNotFound < RuntimeError; end

  attr_reader :head

  def empty?
    @head == nil
  end

  def push data
    pushed = Item.new(data)
    pushed.next = @head
    @head = pushed
  end

  def pop
    return nil if empty?
    popped = @head
    @head = @head.next
    popped.data
  end

  def tail
    return nil if empty?
    @head.tail.data
  end

  def delete data
    return nil if empty?
    if @head.data == data
      deleted = @head
      @head = @head.next
    else
      before = @head.find_before(data)
      return nil if before.nil?
      deleted = before.next
      before.next = deleted.next
    end
    deleted.data
  end

  def insert_after after, data
    return push data if after.nil?
    raise ElementNotFound.new if empty?
    after_item = @head.find(after)
    raise ElementNotFound.new if after_item.nil?
    after_item.next = Item.new(data)
  end

  class Item
    attr_reader :data
    attr_accessor :next

    def initialize data
      @data = data
    end

    def tail
      @next ? @next.tail : self
    end

    def find_before data
      return nil if @next.nil?
      return self if (@next.data == data)
      @next.find_before data
    end

    def find data
      return self if @data == data
      return nil if @next.nil?
      @next.find data
    end
  end
end

describe LinkedStack do
  let(:stack) { LinkedStack.new }

  describe "#head" do
    it "should be nil with an empty list" do
      stack.head.must_equal nil
    end
  end

  describe "#push" do
    it "should push an item onto the top of the stack" do
      stack.push "Hi"
      stack.head.data.must_equal "Hi"
    end
  end

  describe "#pop" do
    it "should remove an item from the top of the stack and return the item" do
      stack.push "Hi"
      stack.push "World"
      stack.pop.must_equal "World"
      stack.pop.must_equal "Hi"
    end

    it "should return nil once the stack is empty" do
      stack.pop.must_equal nil
      stack.push "Hi"
      stack.pop
      stack.pop.must_equal nil
      stack.pop.must_equal nil
    end
  end

  describe "#tail" do
    it "should return nil for an empty stack" do
      stack.tail.must_equal nil
    end

    it "should return the first item pushed onto the stack" do
      stack.push "Hi"
      stack.push "There"
      stack.push "Buddy"
      stack.tail.must_equal "Hi"
    end
  end

  describe "#delete" do
    it "should remove an item from the tail of the stack" do
      stack.push "Hi"
      stack.push "There"
      stack.push "Bob"
      deleted = stack.delete "Hi"
      deleted.must_equal "Hi"
      stack.tail.must_equal "There"
    end

    it "should remove an item from the head of the stack" do
      stack.push "Hi"
      deleted = stack.delete "Hi"
      deleted.must_equal "Hi"
      stack.head.must_equal nil
    end

    it "should return nil if the item is not in the stack" do
      stack.push "Hi"
      deleted = stack.delete "Bob"
      deleted.must_equal nil
    end
  end

  describe "#insert_after" do
    it "should insert at the beginning of the list when the after param is nil" do
      stack.push "Hi"
      stack.insert_after nil, "Hello"
      stack.head.data.must_equal "Hello"
    end

    it "should raise an exception when the after param is not found" do
      assert_raises(LinkedStack::ElementNotFound) { stack.insert_after "Hi", "hello" }
      stack.push "Whee"
      assert_raises(LinkedStack::ElementNotFound) { stack.insert_after "Hi", "hello" }
    end

    it "should insert at the end of the list when the after param is the tail" do
      stack.push "Hi"
      stack.insert_after "Hi", "Hello"
      stack.tail.must_equal "Hello"
    end
  end
end