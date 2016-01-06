# Given a sorted integer array without duplicates, return the summary of its ranges.
#
# @param {Integer[]} nums
# @return {String[]}

def summary_ranges(nums)
  return [] unless nums
  return ["#{nums[0]}"] if nums.length == 1
  result = []
  start, finish = nums[0], nil

  (0...nums.length).each do |i|
    unless nums[i+1] == nums[i] + 1
      finish = nums[i]
      if start == finish
        result << "#{start}"
      else
        result << "#{start.to_s + '->' + finish.to_s}"
      end
      start = nums[i+1]
    end
  end
  result
end

#walk down nums
# test if nums[i+1] == nums[i] + 1, continue
# else, nums[i] = end, push start, end, nums[i + 1] = start, p