/**
 * Given a single input string, write a function that produces all possible anagrams
 * of a string and outputs them as an array. At first, don't worry about
 * repeated strings.  What time complexity is your solution?
 *
 * Extra credit: Deduplicate your return array without using uniq().
 */

/**
  * example usage:
  * var anagrams = anagrams('abc');
  * console.log(anagrams); // [ 'abc', 'acb', 'bac', 'bca', 'cab', 'cba' ]
  */

var anagrams = function(word) {

  if (typeof(word) !== 'string') return;

  if (word.length === 1) {
    return [word];
  } else {
    var allAnagrams = [],
        dict = {},
        current,
        others;

    for (var i = 0; i < word.length; i++) {
      current = word[i];
      others = anagrams(word.substring(0, i) + word.substring(i + 1));
      for (var j = 0; j < others.length; j++) {
        var concatenated = current.concat(others[j]);
        if (!dict.hasOwnProperty(concatenated)) {
          dict[concatenated] = true;
          allAnagrams.push(concatenated);
        }
      }    
    }

    return allAnagrams;
  }

};
