/**
 * Write a function that takes an unsigned integer and returns the number of ’1' bits it has (also known as the Hamming weight).
 * @param {number} number - a positive integer
 * @return {number}
 */
var hammingWeight = function(number) {
  return number.toString(2).split("1").length - 1
};
