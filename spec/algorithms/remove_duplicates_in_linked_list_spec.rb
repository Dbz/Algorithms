require_relative '../../algorithms/remove_duplicates_in_linked_list'

describe 'remove_duplicates' do
  let!(:a) { Node.new('a') }
  before do
    a2 = Node.new('a')
    b  = Node.new('b')
    b2 = Node.new('b')
    c  = Node.new('c')
    c2 = Node.new('c')
    a.next  = a2
    a2.next = b
    b.next  = b2
    b2.next = c
    c.next  = c2
  end

  it 'removes all duplicates' do
    expect(a.to_s).to eq 'a->a->b->b->c->c'
    remove_duplicates(a)
    expect(a.to_s).to eq 'a->b->c'
  end
end

