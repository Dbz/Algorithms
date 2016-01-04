// Write a function that will output all subsets of an array.

function subsets(array) {
  if (array.length === 0) {
    return [[]];
  }

  var firstElement = array[0];
  var subSubsets = subsets(array.slice(1));

  var newSubsets = subSubsets.map(function(subSubset) {
    return [firstElement].concat(subSubset);
  });

  return subSubsets.concat(newSubsets);
}
