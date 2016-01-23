require_relative '../../../Algorithms/Ruby/largest_internal_binary_search_tree'

describe 'largest_internal_binary_search_tree' do
  it 'returns the entire binary tree' do
    root = Node.new(10)
    root.left = Node.new(9)
    root.right = Node.new(11)

    expect(largest_internal_binary_search_tree(root).count).to eq(3)
  end

  it "returns a subtree that doesn't start at root" do
    root = Node.new(10)
    root.right = Node.new(11)
    root.right.right = Node.new(11)
    root.right.right.left = Node.new(10)
    root.right.right.left.left = Node.new(9)
    root.right.right.left.left.left = Node.new(8)

    expect(largest_internal_binary_search_tree(root).count).to eq(4)
  end

  it 'returns an empty array when there are no binary search trees' do
    root = Node.new(10)
    root.left = Node.new(11)
    root.right = Node.new(9)

    expect(largest_internal_binary_search_tree(root)).to eq([])
  end
end
