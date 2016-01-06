# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.
#
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  num = nums[nums.length - 1]
  result = (num ^ 2) * num / 2
  nums.each do |num|
    result -= num
  end
  result 
end
