/**
 * Given an array and a value, remove all instances of that value in place and return the new length.
 *
 * @param {number[]} numbers
 * @param {number} value
 * @return {number}
 */

var removeValue = function(numbers, value) {
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] === value) {
      numbers.splice(i, 1);
      i--;
    }
  }
  return numbers.length;
};
