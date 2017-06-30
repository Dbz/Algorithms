require_relative '../../algorithms/string_rotation'

describe 'rotation?' do
  let(:str) { 'waterbottle' }
  let(:rotation) { 'erbottlewat' }
  let(:nonrotation) { 'wterbottlew' }

  it 'returns true when the strings are rotations of each other' do
    expect(rotation_1? str, rotation).to eq true
    expect(rotation_2? str, rotation).to eq true
  end

  it 'returns false when the strings are not rotations of each other' do
    expect(rotation_1? str, nonrotation).to eq false
    expect(rotation_2? str, nonrotation).to eq false
  end
end

