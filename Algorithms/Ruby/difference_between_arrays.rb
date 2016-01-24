# Write a function (similar to _.difference) that takes two arrays
# and returns two arrays containing the elements not present in the other

def difference(arr1, arr2)
  result_1 = arr1.reject { |num| arr2.include?(num) }
  result_2 = arr2.reject { |num| arr1.include?(num) }

  [result_1, result_2]
end
