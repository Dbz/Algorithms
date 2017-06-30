require_relative '../../algorithms/permutation_palindrome'

describe 'permutaiton_of_palindrome?' do
  it 'returns true when a string is a permutation of a palindrome' do
    expect(permutation_of_palindrome?('meow iamacatm eowiamac atX')).to eq true
  end

  it 'returns false when a string is not a permutation of a palindrome' do
    expect(permutation_of_palindrome?('meowiamacat')).to eq false
  end
end

