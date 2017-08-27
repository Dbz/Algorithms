require_relative '../../algorithms/palindrome'

describe 'palindrome linked lists' do
  let!(:linked_list_palindrome) { LinkedList.new }
  let!(:linked_list_palindrome_2) { LinkedList.new }
  let!(:linked_list_meow) { LinkedList.new }
  before do
    linked_list_palindrome.add('h')
    linked_list_palindrome.add('e')
    linked_list_palindrome.add('h')
    linked_list_palindrome.add('e')
    linked_list_palindrome.add('h')

    linked_list_palindrome_2.add('a')
    linked_list_palindrome_2.add('a')
    linked_list_palindrome_2.add('a')
    linked_list_palindrome_2.add('a')

    linked_list_meow.add('m')
    linked_list_meow.add('e')
    linked_list_meow.add('o')
    linked_list_meow.add('w')
  end

  context 'doubly linked lists' do
    it 'returns true when an odd length doubly linked list is a palindrome' do
      expect(linked_list_palindrome.to_a).to match_array %w(h e h e h)
      expect(doubly_linked_list_palindrome? linked_list_palindrome).to eq true
    end

    it 'returns true when an even length doubly linked list is a palindrome' do
      expect(linked_list_palindrome_2.to_a).to match_array %w(a a a a)
      expect(doubly_linked_list_palindrome? linked_list_palindrome_2).to eq true
    end

    it 'returns false when a doubly linked list is not a palindrome' do
      expect(linked_list_meow.to_a).to match_array %w(m e o w)
      expect(doubly_linked_list_palindrome? linked_list_meow).to eq false
    end
  end

  context 'singly linked lists' do
    it 'returns true when an odd length singly linked list is a palindrome' do
      expect(linked_list_palindrome.to_a).to match_array %w(h e h e h)
      expect(singly_linked_list_palindrome? linked_list_palindrome).to eq true
    end

    it 'returns true when an even length singly linked list is a palindrome' do
      expect(linked_list_palindrome_2.to_a).to match_array %w(a a a a)
      expect(singly_linked_list_palindrome? linked_list_palindrome_2).to eq true
    end

    it 'returns false when a singly linked list is not a palindrome' do
      expect(linked_list_meow.to_a).to match_array %w(m e o w)
      expect(singly_linked_list_palindrome? linked_list_meow).to eq false
    end
  end
end

