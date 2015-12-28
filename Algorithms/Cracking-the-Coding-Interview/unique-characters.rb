def unique_string(str)
  return false if str.length > 128
  str_map = {}

  (0...str.length).each do |i|
    if str_map[str[i].ord] != true
      str_map[str[i].ord] = true
    else
      return false
    end
  end
  return true
end


unique_string("hello my name is isis")