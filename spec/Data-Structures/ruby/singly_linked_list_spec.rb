require_relative '../../../Data-Structures/Ruby/y_linked_list'

describe 'LinkedList' do
  let!(:linked_list) { LinkedList.new }

  it 'creates missing elements when setting values' do
    linked_list[1] = 'one'
    expect(linked_list[0]).to eq(nil)
    expect(linked_list[1]).to eq('one')
  end

  it 'enumerates with each' do
    values         = [1, 2, 3]
    linked_list[0] = 1
    linked_list[1] = 2
    linked_list[2] = 3

    linked_list.each_with_index do |value, index|
      expect(value).to eq(values[index])
    end
  end

  it 'has a length' do
    linked_list[0] = 1
    linked_list[1] = 2

    expect(linked_list.length).to eq(2)
  end

  specify '#first returns the first value' do
    linked_list[0] = 1
    linked_list[1] = 2

    expect(linked_list.first).to eq(1)
  end

  specify 'last returns the last value' do
    linked_list[0] = 1
    linked_list[1] = 2

    expect(linked_list.last).to eq(2)
  end
end
