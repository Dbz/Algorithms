def caesar_cipher(str, shift)
  result = ''
  str.chars.each do |char|
    ord = char.ord
    if ord >= 65 && ord <= 90
      new_ord = ord + shift
      if new_ord > 90
        new_ord = (new_ord % 26) + 64
      end
    elsif ord >= 97 && ord <= 122
      new_ord = ord + shift
      if new_ord > 122
        new_ord = (new_ord % 26) + 96
      end
    else
      new_ord = ord
    end
    result += new_ord.chr
  end
  result
end
