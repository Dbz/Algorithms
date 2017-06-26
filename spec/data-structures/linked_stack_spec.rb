require_relative '../../data-structures/linked_stack'

describe LinkedStack do
  let(:linked_stack) { LinkedStack.new }
  specify '#peek will reveal the top of the stack' do
    linked_stack.push('hello')

    expect(linked_stack.peek).to eq('hello')
    expect(linked_stack.length).to eq(1)
  end

  specify '#push adds an element to the top of the stack' do
    linked_stack.push('hello')
    linked_stack.push('world')

    expect(linked_stack.peek).to eq('world')
  end

  specify '#pop removes the last element added to the stack and returns it' do
    linked_stack.push('hello')
    linked_stack.push('world')

    expect(linked_stack.pop).to eq('world')
  end

  specify '#empty? returns true if there are no elements on the stack' do
    expect(linked_stack.empty?).to be_truthy

    linked_stack.push('hello')
    linked_stack.push('world')

    expect(linked_stack.empty?).to be_falsey

    linked_stack.pop
    linked_stack.pop

    expect(linked_stack.empty?).to be_truthy
  end
end
