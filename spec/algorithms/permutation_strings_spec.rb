require_relative '../../algorithms/permutation_strings'

describe 'permutation?' do
  let(:cat) { 'iamacatmeow' }
  let(:cat_permutation) { 'iamcatameow' }
  let(:dog) { 'iamadog' }

  it 'returns true when two strings are permutations' do
    expect(permutation_1?(cat, cat_permutation)).to eq true
    expect(permutation_2?(cat, cat_permutation)).to eq true
  end

  it 'returns false when two strings are not permutations' do
    expect(permutation_1?(cat, dog)).to eq false
    expect(permutation_2?(cat, dog)).to eq false
  end
end

