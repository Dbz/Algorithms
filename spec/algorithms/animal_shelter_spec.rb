require_relative '../../algorithms/animal_shelter'

describe 'AnimalShelter' do
  let(:cat1) { Animal.new(:cat) }
  let(:cat2) { Animal.new(:cat) }
  let(:cat3) { Animal.new(:cat) }
  let(:dog1) { Animal.new(:dog) }
  let(:dog2) { Animal.new(:dog) }
  let(:shelter) { AnimalShelter.new }

  before do
    shelter.enqueue cat1
    shelter.enqueue cat2
    shelter.enqueue dog1
    shelter.enqueue cat3
    shelter.enqueue dog2
  end

  it 'dequeues the cats correctly' do
    expect(shelter.dequeue_cat).to eq cat1
    expect(shelter.dequeue_cat).to eq cat2
    expect(shelter.dequeue_cat).to eq cat3
  end

  it 'dequeues the dogs correctly' do
    expect(shelter.dequeue_dog).to eq dog1
    expect(shelter.dequeue_dog).to eq dog2
  end

  it 'dequeues the animals correctly' do
    expect(shelter.dequeue_any).to eq cat1
    expect(shelter.dequeue_any).to eq cat2
    expect(shelter.dequeue_any).to eq dog1
    expect(shelter.dequeue_any).to eq cat3
    expect(shelter.dequeue_any).to eq dog2
  end
end

