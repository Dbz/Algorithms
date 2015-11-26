def encode_url(str)
  res = []
  str = str.strip
  for char in str.chars
    if char == ' '
      res << '%20'
    else
      res << char
    end
  end

  return res.join("")
end