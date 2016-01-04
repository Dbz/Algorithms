// Write a function to find the 2nd largest element in a binary search tree ↴ .

function largestElement(root) {
  return root.right ?  larget(root.right) : root.value;
}

function secondLargestElement(root) {
  if (!root.value) {
    return null;
  } else if (root.left && !root.right) {
    return largestElement(root.left);
  } else if (root.right && !root.left && !root.right.right) {
    return root.right.value;
  } else {
    return secondLargestElement(root.right);
  }
}
