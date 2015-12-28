# Given a single input string, write a function that produces all possible anagrams
# of a string and outputs them as an array. At first, don't worry about
# repeated strings.  What time complexity is your solution?
#
# Extra credit: Deduplicate your return array without using uniq().
#

def all_anagrams(string)
  return false unless string.is_a?(String)
  return [string] if string.length == 1
  anagrams, dict = [], {}

  (0...string.length).each do |i|
    current = string[i]
    others = all_anagrams(string[0...i] + string[i+1..-1])
    (0...others.length).each do |j|
      concatenated = current + others[j]
      unless dict[concatenated]
        dict[concatenated] = true
        anagrams.push(concatenated)
      end
    end
  end

  anagrams
end

all_anagrams("abc")
