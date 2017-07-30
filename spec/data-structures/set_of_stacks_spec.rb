require_relative '../../data-structures/set_of_stacks'

describe 'SetOfStacks' do
  let(:stack) { SetOfStacks.new(3) }
  before do
    (1..9).each { |n| stack.push(n) }
  end

  it 'can adds 9 elements and creates three stacks' do
    expect(stack.instance_variable_get('@stacks').size).to eq 3
  end

  it 'pops elements off in the correct order' do
    values = 9.times.each_with_object([]) { |_, arr| arr << stack.pop }
    expect(values).to match_array 9.downto(1).to_a
  end

  it 'can pop an element off of a specific substack' do
    expect(stack.pop_at(0)).to eq 3
    expect(stack.pop_at(0)).to eq 2
    expect(stack.pop_at(0)).to eq 1
    expect(stack.pop_at(0)).to eq nil
  end
end

