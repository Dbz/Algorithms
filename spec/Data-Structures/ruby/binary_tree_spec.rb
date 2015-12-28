require_relative '../../../Data-Structures/Ruby/binary-tree'

describe 'BinaryTree' do
  let(:tree) { BinaryTree.new }

  specify '#insert adds data to the tree' do
    numbers = [1, 2]

    numbers.each do |number|
      tree.insert number
    end

    tree_data = []
    tree.traverse_bfs do |datum|
      tree_data << datum
    end

    expect(tree_data).to eq(numbers)
  end

  specify '#delete removes data from the tree' do
    numbers = [1, 2, 3]

    numbers.each do |number|
      tree.insert number
    end

    tree.delete(3)

    tree_data = []
    tree.traverse_bfs do |datum|
      tree_data << datum
    end

    expect(tree_data).to eq([1, 2])
  end

  specify '#traverse_dfs returns the data in the correct order' do
    numbers = [1, 2, 3, 4]

    numbers.each do |number|
      tree.insert number
    end

    tree_data = []
    tree.traverse_dfs do |number|
      tree_data << number
    end

    expect(tree_data).to eq([1, 2, 4, 3])
  end

  specify '#traverse_bfs returns the data in the correct order' do
    numbers = [1, 2, 3, 4]

    numbers.each do |number|
      tree.insert number
    end

    tree_data = []
    tree.traverse_bfs do |number|
      tree_data << number
    end

    expect(tree_data).to eq(numbers)
  end
end
