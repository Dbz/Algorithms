# Given an array of integers, every element appears twice except for one. Find that single one.
# @param {Integer[]} nums
# @return {Integer}

def single_number(numbers)
  numbers.reduce(:^)
end
