# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
#
# @param {Integer[]} numbers
# @return {Integer}

def missing_number(numbers)
  last = -1
  numbers.each do |number|
    return number - 1 unless number - 1 == last
    last = number
  end
end
