/**
 * Given a single input string, write a function that produces all possible anagrams
 * of a string and outputs them as an array. At first, don't worry about
 * repeated strings.  What time complexity is your solution?
 *
 * Extra credit: Deduplicate your return array without using uniq().
 */

var anagrams = function(word) {

  if (typeof(word) !== 'string') return;

  if (word.length === 1) {
    return [word];
  } else {
    var allAnagrams   = [],
      visitedAnagrams = {},
      currentLetter,
      partialAnagrams,
      fullAnagram;

    for (var i = 0; i < word.length; i++) {
      currentLetter = word[i];
      partialAnagrams = anagrams(word.substring(0, i) + word.substring(i + 1));
      for (var j = 0; j < partialAnagrams.length; j++) {
        fullAnagram = currentLetter.concat(partialAnagrams[j]);
        if (!visitedAnagrams.hasOwnProperty(fullAnagram)) {
          visitedAnagrams[fullAnagram] = true;
          allAnagrams.push(fullAnagram);
        }
      }    
    }

    return allAnagrams;
  }
};
