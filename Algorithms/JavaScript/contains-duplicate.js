/**
 * Given an array of integers, find if the array contains any duplicates. Your function should return true if any
 * value appears at least twice in the array, and it should return false if every element is distinct.
 * @param {number[]} numbers
 * @return {boolean}
 */
var containsDuplicate = function(numbers) {
  var visitedNumbers = {};
  for (var i = 0; i < numbers.length; i++) {
    if (visitedNumbers[numbers[i]]) return true;
    visitedNumbers[numbers[i]] = 1;
  }
  
  return false;
};
