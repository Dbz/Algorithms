# String Rotation: Assume you have a method isSubst ring which checks if one word is a substring
# of another. Given two strings, 51 and 52, write code to check if 52 is a rotation of 51 using only one
# call to isSubstring (e.g., "waterbottle" is a rotation of"erbottlewat").

require 'Set'

# Looping is O(n), concatination is O(n), and comparision is also O(n) making this O(n^2)
def rotation_1?(str1, str2)
  return false unless str1.size == str2.size

  0.upto(str1.size) do |x|
    return true if str1[x..str1.size] + str1[0...x] == str2
  end
  false
end

# Concatinating arrays is O(n) and checking for a substring is O(n) making this O(n)
def rotation_2?(str1, str2)
  return false unless str1.size == str2.size
  (str1 + str1).include? str2
end

