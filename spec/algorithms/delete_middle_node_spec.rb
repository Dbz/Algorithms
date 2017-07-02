require_relative '../../algorithms/delete_middle_node'

describe 'delete_middle_node' do
  let!(:a) { Node.new('a') }
  let!(:b) { Node.new('b') }
  let!(:c) { Node.new('c') }
  let!(:d) { Node.new('d') }
  before do
    a.next  = b
    b.next  = c 
    c.next  = d
  end

  it 'removes a middle node' do
    expect(a.to_s).to eq 'a->b->c->d'
    delete_middle_node(a.next)
    expect(a.to_s).to eq 'a->c->d'
    delete_middle_node(a.next)
    expect(a.to_s).to eq 'a->d'
  end
end

