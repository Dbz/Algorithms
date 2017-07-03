require_relative '../../algorithms/sum_lists'

describe 'sum_lists' do
  let!(:one) { Node.new(1) }
  let!(:two) { Node.new(2) }
  let!(:three) { Node.new(3) }
  let!(:four) { Node.new(4) }
  let!(:five) { Node.new(5) }
  let!(:six) { Node.new(6) }
  let!(:seven) { Node.new(7) }
  before do
    # 125 (521)
    one.next    = two
    two.next    = five

    # 3765 (5673)
    three.next  = seven
    seven.next  = six
    six.next    = five
  end

  it 'Sums two reversed linked lists of a number and returns the sum as a linked list' do
    expect(one.to_a).to match_array [1, 2, 5] # 125 (521)
    expect(three.to_a).to match_array [3, 7, 6, 5] # 3765 (5673)

    # 521 + 5673 = 6194 (4916)
    result = sum_lists(one, three) 

    expect(result.to_a).to match_array [4, 9, 1, 6]
  end
end
