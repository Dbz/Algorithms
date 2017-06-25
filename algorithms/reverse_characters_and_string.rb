def reverse_sentence(str)
  reverse_in_place(str, 0, str.length - 1)

  word_beginning = 0
  (0..str.length).each do |i|
    if i == str.length || str[i] == ' '
      reverse_in_place(str, word_beginning, i - 1)
      word_beginning = i + 1
    end
  end

  str
end

def reverse_in_place(str, start, len)
  while start < len
    str[start], str[len] = str[len], str[start]
    start               += 1
    len                 -= 1
  end

  str
end
