# needs refactoring
def one_edit_away(str1, str2)
  return true if str1 == str2
  str1 = str1.chars
  str2 = str2.chars

  if str1.length == str2.length
    replace?(str1, str2)
  elsif str1.length == str2.length + 1 || str1.length + 1 == str2.length
    delete?(str1, str2)
  elsif str1.length == str2.length - 1 || str1.length - 1 == str2.length
    add?(str1, str2)
  else
    false
  end
end

def replace?(str1, str2)
  i = 0
  for a, b in str1.zip(str2)
    unless b == a
      str2[i] = a
      if str2.join == str1.join
        return true
      else
        return false
      end
      i += 1
    end
  end
  true
end

def add?(str1, str2)
  i = 0
  j = 0
  while i < str2.length
    if str1[i] != str2[j]
      if i != j
        return false
      else
        i += 1
      end
    else
      i += 1
      j += 1
    end
    true
  end
end

def delete?(str1, str2)
  i = 0
  str2.each_char do |char|
    if i == str1.length
      str2.delete_at(i)
      return true
    elsif char != str1[i]
      str2.delete_at(i)
      if str1 == str2
        return true
      else
        return false
      end
      i += 1
    end
  end
end
