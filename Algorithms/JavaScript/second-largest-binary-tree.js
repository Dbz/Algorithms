//Write a function to find the 2nd largest element in a binary search tree ↴ .

function largest(rootNode){
  if (rootNode.right){
    return largest(rootNode.right)
  };

  return rootNode.value;
};

function getSecondLargest(rootNode){
  if (!rootNode.value){
    return;
  }

  if (rootNode.left && !rootNode.right){
    return largest(rootNode.left);
  }

  if (rootNode.right && !rootNode.left && !rootNode.right.right){
    return rootNode.right.value;
  }

  return getSecondLargest(rootNode.right);
};
