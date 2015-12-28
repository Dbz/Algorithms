# returns true if string1 and string2 are permutations of each other
def check_permutations(string1, string2)
  string1.chars.sort.join == string2.chars.sort.join
end
