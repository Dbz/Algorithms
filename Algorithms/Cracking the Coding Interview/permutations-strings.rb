def check_permutations(str1, str2)
  return false if str1.length != str2.length
  str1, str2 = str1.chars.sort.join, str2.chars.sort.join
  return str1 == str2
end