# Given an integer x and a sorted array a of N distinct integers,
# design a linear-time algorithm to determine if there exists
# two distinct indices i and j such that arr[i] + arr[j] == x

# @param {Array[]} arr
# @return {Boolean}

def two_sum(numbers, sum)
  possible_integers = Set.new
  numbers.each do |number|
    return true if possible_integers.include? number
    possible_integers << sum - number
  end

  false
end
