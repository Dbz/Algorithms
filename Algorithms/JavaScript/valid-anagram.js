/**
 * Given two strings s and t, write a function to determine if t is an anagram of s.
 *
 * @param {string} word1
 * @param {string} word2
 * @return {boolean}
 */
var validAnagram = function(word1, word2) {
  return word1.split("").sort().join("") == word2.split("").sort().join("");
};
