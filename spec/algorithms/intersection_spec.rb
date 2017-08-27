require_relative '../../algorithms/intersection'

describe 'intersection of two lists' do
  let!(:linked_list1) { LinkedList.new }
  let!(:linked_list2) { LinkedList.new }
  let!(:linked_list3) { LinkedList.new }
  before do
    linked_list1.add('h')
    linked_list1.add('e')
    linked_list1.add('l')
    linked_list1.add('p')
    linked_list1.add('m')
    linked_list1.add('e')

    linked_list2.add('0')
    linked_list2.add('1')
    linked_list2.add('2')
    linked_list2.add('3')
    linked_list2.add('4')
    linked_list2.tail.next = linked_list1.head
    linked_list2.tail = linked_list2.tail.next

    linked_list3.add('h')
    linked_list3.add('e')
    linked_list3.add('l')
    linked_list3.add('p')
    linked_list3.add('m')
    linked_list3.add('e')
  end

  it 'returns the node of intersection of two linked lists' do
    expect(intersection(linked_list2, linked_list1).to_a).to match_array %w(h e l p m e)
  end

  it 'returns nil when there are no intersecting nodes' do
    expect(intersection(linked_list1, linked_list3)).to eq nil
  end
end

