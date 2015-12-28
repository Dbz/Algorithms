# Given an array of integers, every element appears twice except for one. Find that single one.
# @param {Integer[]} nums
# @return {Integer}

def single_number(nums)
  nums.reduce(:^)
end

# Uses XOR operator to flip bits of the digit that only appears one time.
