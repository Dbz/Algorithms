def compress_string(str)
  result = []
  prev = str[0]
  count = 0

  for char in str.chars
    if char == prev
      count += 1
    else
      result << "#{char count}"
      prev = char
      count = 0
    end
  end

  result << "#{char count}"
  result = result.join("")
  if result.length < str.length
    return result
  else
    return str
  end
end