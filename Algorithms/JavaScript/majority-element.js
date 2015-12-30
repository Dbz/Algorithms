/**
 * Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 * @param {number[]} nums
 * @return {number}
 */
var majorityElement = function(nums) {
  nums = nums.sort(function(a,b) {
    return a-b;
  });
  var midpoint = Math.floor(nums.length / 2);
  return nums[midpoint];
};
