def encode_url(str)
  res = []
  str = str.strip
  str.each_char do |char|
    if char == ' '
      res << '%20'
    else
      res << char
    end
  end

  res.join("")
end
