require_relative '../../algorithms/one_edit_away.rb'

describe 'one_edit_away?' do
  it 'returns true when strings are one edit away' do
    expect(one_edit_away?('hello', 'hello2')).to be true
    expect(one_edit_away?('hello', 'hell')).to be true
    expect(one_edit_away?('hello', 'bello')).to be true
  end

  it 'returns false when strings are two or more edits away' do
    expect(one_edit_away?('2hello', 'hello2')).to be false
    expect(one_edit_away?('hello', 'held')).to be false
    expect(one_edit_away?('hello', 'bell2')).to be false
  end
end

