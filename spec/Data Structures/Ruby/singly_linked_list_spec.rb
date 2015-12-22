require_relative '../../../Data Structures/Ruby/singly-linked-list'

describe 'LinkedList' do
  let!(:linked_list) { LinkedList.new }

  it 'creates missing elements when setting values' do
    linked_list[1] = 'one'
    expect(linked_list[0]).to eq(nil)
    expect(linked_list[1]).to eq('one')
  end

  it 'enumerates with each' do
    values = [1, 2, 3]
    linked_list[0] = 1
    linked_list[1] = 2
    linked_list[2] = 3

    linked_list.each_with_index do |value, index|
      expect(value).to eq(values[index])
    end
  end
end
