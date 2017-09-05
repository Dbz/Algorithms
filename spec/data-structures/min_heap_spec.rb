require_relative '../../data-structures/min_heap.rb'

describe 'MinHeap' do
  let(:heap) { MinHeap.new }
  before { (0..7).to_a.shuffle.each { |n| heap.insert n } }

  it '#extract_min extracts the lowest number each time' do
    7.times do |n|
      expect(heap.extract_min).to eq n
    end
  end

  it '#insert will properly insert elements for later removal' do
    [-1, -2, -3, -4].each do |n|
      heap.insert(n)
      expect(heap.min).to eq n
    end
  end

  it '#min will return the lowest number in the heap' do
    (0..7).each do |n|
      expect(heap.min).to eq n
      heap.extract_min
    end
  end
end

