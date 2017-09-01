# CtCI Edition 6 Problem 1.5
# One Away: There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function to check if they are
# one edit (or zero edits) away.

# Loops through the largest string, so it is O(n)
def one_edit_away?(str1, str2)
  larger_str, smaller_str = str1.length > str2.length ? [str1, str2] : [str2, str1]
  edits_away = 0
  maximum_index = larger_str.length - 1
  (0..maximum_index).each do |i|
    # if the strings are different sizes, then you check to make sure the longer_str char is equal to
    # the smaller char moved left for each extra longer_str char
    # e.g. ls = 'a1bcd' and s = 'abcd'. At ls[1] edits_away = 1. As ls[2] = b and s[2 - 1 = 1] = b. 
    edits_away += 1 if larger_str.length != smaller_str.length && larger_str[i] != smaller_str[i - edits_away]
    # if the strings are the same size, then each character that is different will count as one edit
    edits_away += 1 if larger_str.length == smaller_str.length && larger_str[i] != smaller_str[i]
    return false if edits_away >= 2
  end
  true
end

