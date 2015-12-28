# Write a function (similar to _.difference) that takes two arrays and returns two arrays containing the elements not present in the other
def difference(arr1, arr2)
  result_1 = arr1.reject do |num|
    arr2.include?(num)
  end

  result_2 = arr2.reject do |num|
    arr1.include?(num)
  end
  
  [result_1, result_2]
end

def difference(arr1, arr2)
  arr1_map = {}
  arr2_map = {}
  res1, res2 = [], []

  arr1.each do |num|
    arr1_map[num] = true
  end

  arr2.each do |num|
    arr2_map[num] = true
  end

  arr1.each do |num|
    next if arr2_map[num]
    res1.push(num)
  end

  arr2.each do |num|
    next if arr1_map[num]
    res2.push(num)
  end

  [res1, res2]
end
