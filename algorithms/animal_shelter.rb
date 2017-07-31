# CtCI 6th Edition problem 3.6
# Animal Shelter: An animal shelter, which holds only dogs and cats, operates on a strictly"first in, first
# out" basis. People must adopt either the "oldest" (based on arrival time) of all animals at the shelter,
# or they can select whether they would prefer a dog or a cat (and will receive the oldest animal of
# that type). They cannot select which specific animal they would like. Create the data structures to
# maintain this system and implement operations such as enqueue, dequeueAny, dequeueDog,
# and dequeueCat. You may use the built-in Linked List data structure.

class Animal
  attr_reader :type
  attr_accessor :shelter_number

  def initialize(type)
    @type = type
  end
end

class AnimalShelter
  def initialize
    @cat_queue = []
    @dog_queue = []
    @shelter_number = 0
  end

  def enqueue(animal)
    animal.shelter_number = @shelter_number
    @shelter_number += 1
    animal.type == :cat ? @cat_queue << animal : @dog_queue << animal
  end

  def dequeue_any
    return @dog_queue.pop if @cat_queue.last.nil?
    return @cat_queue.pop if @dog_queue.last.nil?
    @cat_queue.first.shelter_number < @dog_queue.first.shelter_number ? @cat_queue.shift : @dog_queue.shift
  end

  def dequeue_cat
    @cat_queue.shift
  end

  def dequeue_dog
    @dog_queue.shift
  end
end

