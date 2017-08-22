require_relative '../../algorithms/string_compression.rb'

describe 'compress_string' do
  let(:not_compressed) { 'abcabcabc' }
  let(:compressable) { 'abbcccdddd' }
  let(:compressed) { 'a1b2c3d4' }

  it 'returns the original string when it can not be compressed' do
    expect(compress_string not_compressed).to eq not_compressed
  end

  it 'returns a compressed string when possible' do
    expect(compress_string compressable).to eq compressed
  end
end

