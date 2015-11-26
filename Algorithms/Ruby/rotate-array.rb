def rotate_array(arr, n)
  reverse(reverse(arr[0...n]) + reverse(arr[n..arr.length - 1]))
end


def reverse(arr)
  i, j = 0, arr.length - 1

  while i < j
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    i += 1
    j -= 1
  end

  arr
end