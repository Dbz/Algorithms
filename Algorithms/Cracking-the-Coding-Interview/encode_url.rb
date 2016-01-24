def encode_url(str)
  res = []
  str = str.strip
  str.each_char do |char|
    res << char == ' ' ? '%20' : char
  end

  res.join('')
end
