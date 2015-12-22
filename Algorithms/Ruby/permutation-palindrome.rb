def permutation_palindrome(str)
  dict = {}
  odds = 0

  str.chars.map do |val|
   dict[val] = (dict[val]) ? dict[val] += 1 : 1
  end

  dict.keys.map do |key|
    odds += 1 if dict[key] % 2 != 0
  end

  return odds <= 1
end