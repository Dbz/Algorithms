require_relative '../../algorithms/is_unique'

describe 'unique?' do
  let(:unique_str) { 'meowcats' }
  let(:duplicate_str) { 'meowmeow' }

  it 'returns true when all characters are unique' do
    expect(unique_1?(unique_str)).to eq true
    expect(unique_2?(unique_str)).to eq true
    expect(unique_3?(unique_str)).to eq true
  end

  it 'returns false when there are duplicate characters' do
    expect(unique_1?(duplicate_str)).to eq false
    expect(unique_2?(duplicate_str)).to eq false
    expect(unique_3?(duplicate_str)).to eq false
  end
end

