/**
 * You are climbing a stair case. It takes n steps to reach to the top.
 * Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 *
 * @param {number} n
 * @return {number}
 */

var climbStairs = function(number) {
  var stairCombinations = [0, 1, 2];
  for(var i = 3; i <= number; i++) {
    stairCombinations[i] = stairCombinations[i - 1] + stairCombinations[i - 2];
  }
  return stairCombinations[number];
};
