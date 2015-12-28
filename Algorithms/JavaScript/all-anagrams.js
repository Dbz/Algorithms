/**
 * Given a single input string, write a function that produces all possible anagrams
 * of a string and outputs them as an array. At first, don't worry about
 * repeated strings.  What time complexity is your solution?
 *
 * Extra credit: Deduplicate your return array without using uniq().
 */

/**
  * example usage:
  * var anagrams = allAnagrams('abc');
  * console.log(anagrams); // [ 'abc', 'acb', 'bac', 'bca', 'cab', 'cba' ]
  */

var allAnagrams = function(string) {

  if (typeof(string) !== 'string') {return;}

  if (string.length === 1) {
    return [string];
  } else {
    var anagrams = [],
        dict = {},
        current,
        others;

    for (var i = 0; i < string.length; i++){
      current = string[i];
      others = allAnagrams(string.substring(0, i) + string.substring(i + 1))
      for (var j = 0; j < others.length; j++){
        var concatenated = current.concat(others[j]);
        if (!dict.hasOwnProperty(concatenated)){
          dict[concatenated] = true;
          anagrams.push(concatenated);
        }
      }    
    }

    return anagrams;
  }

};
