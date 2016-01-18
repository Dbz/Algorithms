// Write a function that will output all subsets of an array.

function subsets(array) {
  if (array.length === 0) return [[]];

  var firstElement   = array[0];
  var partialSubsets = subsets(array.slice(1));

  var longestSubsets = partialSubsets.map(function(subset) {
    return [firstElement].concat(subset);
  });

  return longestSubsets.concat(partialSubsets);
}
