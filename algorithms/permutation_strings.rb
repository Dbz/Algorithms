# CtCI Edition 6 problem 1.2
# Check Permutation: Given two strings, write a method to decide if one is a permutation of the
# other.

# Sorting is O(nlogn) and comparing is O(n) making this O(aloga + blogb)
def permutation_1?(str1, str2)
  # Sorted permutations are the same
  str1.split('').sort == str2.split('').sort
end

# Looping is O(n), so this is O(a + b)
def permutation_2?(str1, str2)
  return false if str1.length != str2.length
  visited_chars = Hash.new { |h, k| h[k] = 0 }
  # Add 1 for each char in str1
  str1.each_char { |char| visited_chars[char] += 1 }
  # Subtract 1 for each char in str1
  str2.each_char { |char| visited_chars[char] -= 1 }
  # All numbers are zero if these strings have the same characters
  visited_chars.values.all?(&:zero?)
end

