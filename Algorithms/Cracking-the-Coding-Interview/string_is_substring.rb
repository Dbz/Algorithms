# Assume you have a method is_substring(s1, s2) which checks if one word is a substring
# of another string. Given 2 strings s1, s2, write code to check if s2 is a rotation
# of s1 using only one call to is_substring. ex. waterbottle -> erbottlewat

def string_is_substring(s1, s2)
  return false if s1.length != s2.length || s1.length == 0
  s1s1 = s1 + s1

  string_is_substring(s1s1, s2)
end
