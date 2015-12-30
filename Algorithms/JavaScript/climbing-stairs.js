/**
 * You are climbing a stair case. It takes n steps to reach to the top.
 * Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 *
 * @param {number} n
 * @return {number}
 */
 
var climbStairs = function(n) {
  var combinations = [0, 1, 2, 3, 5, 8, 13, 21]
  for (var i = 7; i <= n; i++) {
      combinations[i] = combinations[i-1] + combinations[i-2];
  }
  return combinations[n];
};
