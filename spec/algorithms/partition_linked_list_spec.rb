require_relative '../../algorithms/partition_linked_list'

describe 'partition_linked_list' do
  let!(:a) { Node.new(1) }
  let!(:b) { Node.new(2) }
  let!(:c) { Node.new(3) }
  let!(:d) { Node.new(4) }
  let!(:e) { Node.new(4) }
  let!(:f) { Node.new(1) }
  let!(:g) { Node.new(5) }
  before do
    a.next  = b
    b.next  = c 
    c.next  = d
    d.next  = e
    e.next  = f
    f.next  = g
  end

  it 'partitions a linked list around a number' do
    expect(a.to_s).to eq '1->2->3->4->4->1->5'

    partition_linked_list(a, 3)

    arr             = a.to_a
    left_partition  = arr[0..2].sort
    right_partition = arr[3..arr.size].sort

    expect(left_partition).to match_array [1, 1, 2]
    expect(right_partition).to match_array [3, 4, 4, 5]
  end
end
