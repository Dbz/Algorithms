def compress_string(str)
  result = []
  prev = str[0]
  count = 0

  str.each_char do |char|
    if char == prev
      count += 1
    else
      result << char + count.to_s
      prev = char
      count = 0
    end
  end

  result << char + count.to_s
  result = result.join('')
  if result.length < str.length
    result
  else
    str
  end
end
