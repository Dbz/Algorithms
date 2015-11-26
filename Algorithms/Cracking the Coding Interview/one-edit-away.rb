def one_edit_away(str1, str2)
  return true if str1 == str2
  str1, str2 = str1.chars, str2.chars

  if str1.length == str2.length
    return is_replace(str1, str2)
  elsif str1.length == str2.length + 1 || str1.length + 1 == str2.length
    return is_delete(str1, str2)
  elsif str1.length == str2.length - 1 || str1.length - 1 == str2.length
    return is_add(str1, str2)
  else
    return false
  end 
end

def is_replace(str1, str2)
  i = 0
  for a, b in str1.zip(str2)
    if b != a
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

def is_add(str1, str2)
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

def is_delete(str1, str2)
 i = 0
 for char in str2
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