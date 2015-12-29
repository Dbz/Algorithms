# Given an integer x and a sorted array a of N distinct integers, design a linear-time algorithm to determine if there exists two distinct indices i and j such that arr[i] + arr[j] == x
# @param {Array[]} arr
# @return {Boolean}

def two_sum(arr, x)
  seen = {}

  arr.each do |num|
    return true if seen[x - num]
    seen[num] = true
  end

  false
end
