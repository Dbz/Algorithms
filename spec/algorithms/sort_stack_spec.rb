require './algorithms/sort_stack'

describe 'Stack#sort' do
  it 'sorts elements of a stack so that the smallest elements is on top' do
    stack = SortStack.new
    first_ten = (0..9).to_a
    first_ten.each { |n| stack.push n }
    sorted_stack = stack.sort
    sorted_array = 10.times.each_with_object([]) { |n, arr| arr << sorted_stack.pop }
    expect(sorted_array).to match_array first_ten
  end
end

