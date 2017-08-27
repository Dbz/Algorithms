require_relative '../../algorithms/return_kth_to_last_element'

describe 'kth_to_last_element' do
  let!(:a) { Node.new('a') }
  before do
    b  = Node.new('b')
    c  = Node.new('c')
    d  = Node.new('d')
    e  = Node.new('e')
    a.next = b
    b.next = c
    c.next = d
    d.next = e
  end

  it 'returns the second to last element' do
    expect(a.to_s).to eq 'a->b->c->d->e'
    expect(kth_to_last_element(a, 2).to_s).to eq 'c->d->e'
  end
end

