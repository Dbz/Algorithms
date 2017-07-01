# CtCI Edition 6 Problem 1.4
# Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome.
# A palindrome is a word or phrase that is the same forwards and backwards. A permutation
# is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

# Loops through each char so it is O(n)
def permutation_of_palindrome?(str)
  # Count all of the characters
  character_count = Hash.new { |h, k| h[k] = 0 }
  str.each_char { |char| character_count[char] += 1 unless char == ' ' }
  # Only zero or one character count can be odd if the string is a palindrome
  character_count.values.count(&:odd?) <= 1
end

