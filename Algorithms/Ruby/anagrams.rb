# Given a single input string, write a function that produces all possible anagrams
# of a string and outputs them as an array. At first, don't worry about
# repeated strings.  What time complexity is your solution?
#
# Extra credit: Deduplicate your return array without using uniq().
#

def anagrams(word)
  return false unless word.is_a?(String)
  return [word] if word.length == 1
  all_anagrams = Set.new

  (0...word.length).each do |i|
    current_letter = word[i]
    partial_anagram = anagrams(word[0...i] + word[i+1..-1])
    (0...partial_anagram.length).each do |j|
      full_anagram = current_letter + partial_anagram[j]
      all_anagrams << full_anagram
    end
  end

  all_anagrams.to_a
end

# word.split("").combinations.map { |anagram| anagram.join }
