require_relative '../../../Algorithms/Ruby/remove-duplicates'

describe 'remove_duplicate_characters' do
  it 'removes all the duplicate letters in "Hello, World!!"' do
    expect(remove_duplicate_characters('Hello, World!!')).to eq('Helo, Wrd!')
  end
end
