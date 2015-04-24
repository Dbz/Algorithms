//You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
function productOfInts(arr){
  var productOfAllExceptIndex = new Array(arr.length);
  var productSoFar = 1;

  for (var i = 0; i < arr.length; i++){
    productOfAllExceptIndex[i] = productSoFar;
    productSoFar *= arr[i];
  }

  productSoFar = 1;

  i -= 1;

  while (i >= 0){
    productOfAllExceptIndex[i] *= productSoFar;
    productSoFar *= arr[i];
    i--;A
  }

  return productOfAllExceptIndex;
}