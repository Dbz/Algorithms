# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  s = s.chars.sort
  new_str = ''
  prev = s[0]
  new_str += prev

  s.each do |letter|
    next if letter == prev
    prev = letter
    new_str += prev
  end
  new_str
end
