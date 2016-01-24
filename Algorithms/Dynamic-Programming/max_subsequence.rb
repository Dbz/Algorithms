def maximum_subsequence(arr)
  max_so_far = 0
  max_total = 0

  arr.each do |el|
    max_so_far = [max_so_far + el, 0].max
    max_total = [max_total, max_so_far].max
  end

  max_total
end
