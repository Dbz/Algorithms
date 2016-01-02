/**
 * Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 * @param {number[]} numbers
 * @return {number}
 */
var majorityElement = function(numbers) {
  numbers = numbers.sort(function(a, b) {
    return a-b;
  });
  var midpoint = Math.floor(numbers.length / 2);
  return numbers[midpoint];
};
