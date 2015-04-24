//Write a function that works with both positive and negative numbers in an array and outputs the highest product of 3
function highestProductOfThree(arr){
  if (arr.length < 3){
    return false;
  }

  var highest = Math.max(arr[0], arr[1]),
    lowest = Math.min(arr[0], arr[1]),
    highestProdThree = (arr[0] * arr[1] * arr[2]),
    lowestProdTwo = (arr[0] * arr[1]),
    highestProdTwo = (arr[0] * arr[1]);

  for (var i = 2; i < arr.length; i++){
    highestProdThree = Math.max(highestProdThree, (highestProdTwo * arr[i]), (lowestProdTwo * arr[i]));
    highestProdTwo = Math.max(highestProdTwo, (highest * arr[i]), (lowest * arr[i]));
    highest = Math.max(highest, arr[i]);
    lowestProdTwo = Math.min(lowestProdTwo, (lowest * arr[i]), (highest * arr[i]));
    lowest = Math.min(lowest, arr[i]);
  }
  
  return highestProdThree;
}
