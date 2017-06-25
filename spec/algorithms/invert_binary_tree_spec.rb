require_relative '../../algorithms/invert_binary_tree'
require_relative '../../data-structures/tree_node'

describe 'invert_binary_tree' do
  it 'inverts a binary tree' do
    root      = Node.new('root')
    left      = Node.new('L')
    right     = Node.new('R')
    left_left = Node.new('L-L')

    root.left      = left
    root.right     = right
    root.left.left = left_left

    invert_binary_tree(root)

    expect(root.left).to        eq(right)
    expect(root.right).to       eq(left)
    expect(root.right.right).to eq(left_left)
  end
end
