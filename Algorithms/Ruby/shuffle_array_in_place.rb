def shuffle_array_in_place(arr)
  len = arr.length

  (0...len).each do |n|
    rand_int = rand(n..len)
    arr[n], arr[rand_int] = arr[rand_int], arr[n]
  end

  arr
end
