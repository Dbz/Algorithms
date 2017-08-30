require_relative '../../algorithms/loop_detection'

describe 'detection of a loop in a linked list' do
  let!(:linked_list1) { LinkedList.new }
  let!(:linked_list2) { LinkedList.new }
  before do
    linked_list1.add('h')
    linked_list1.add('e')
    linked_list1.add('l')
    linked_list1.add('p')
    linked_list1.add('m')
    linked_list1.add('e')
    linked_list1.add('h')
    linked_list1.add('e')
    linked_list1.add('h')
    linked_list1.add('e')

    linked_list2.add('0')
    linked_list2.add('1')
    linked_list2.add('2')
    linked_list2.add('3')
    linked_list2.add('4')
    linked_list2.tail.next = linked_list2.head
  end

  it 'returns the node at the start of the loop' do
    expect(detect_loop(linked_list2)).to be linked_list2.head
  end

  it 'returns nil when there are no loops' do
    expect(detect_loop(linked_list1)).to eq nil
  end
end

