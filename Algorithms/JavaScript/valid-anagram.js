/**
 * Given two strings s and t, write a function to determine if t is an anagram of s.
 *
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function(s, t) {
  var slen = s.length;
  var tlen = t.length;
  if (slen != tlen) return false 
  s = s.split("").sort();
  t = t.split("").sort();
  
  for (var i = 0; i < slen; i++) {
    if (s[i] !== t[i]) {
      return false;
    }
  }
  return true;
};
