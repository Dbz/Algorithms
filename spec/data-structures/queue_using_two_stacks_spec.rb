require_relative '../../data-structures/queue_using_two_stacks'

describe 'Queue using two stacks' do
  it 'adds items and removes them in the order they were added (FIFO)' do
    queue = MyQueue.new
    five_numbers = (1..5).to_a
    five_numbers.each { |n| queue.add n }
    queue_output = 5.times.each_with_object([]) { |_, arr| arr << queue.remove }
    expect(queue_output).to match_array five_numbers
  end
end

