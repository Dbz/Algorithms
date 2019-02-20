function BinaryTree() {
  this._root = null;
  this.left = null;
  this.right = null;
  this.size = 0;
}

BinaryTree.prototype.addChild = function(value) {
  var node = {
    value: value,
    left: null,
    right: null
  }

  this.size += 1;

  if (!this._root) {
    this.root = node;
  } else{
    var current = this._root;
    while (true) {
      if (value < current.value) {
        if (current.left === null) {
          current.left = node;
          break;
        } else {
          current = current.left;
        }
      } else if (value > current.value) {
        if (current.right === null) {
          current.right = node;
          break;
        } else {
          current = current.right;
        }
      } else {
        break;
      }
    }
  }
}

BinaryTree.prototype.contains = function(value) {
  var current = this._root;
  var found = false;

  while (!found && current) {
    if (value < current.value) {
      current = current.left;
    } else if(value > current.value) {
      current = current.right;
    } else {
      found = true;
    }

    return found;
  }
}

BinaryTree.prototype.traverse = function(process) {
  function inOrder(node) {
    if (node) {
      if (node.left !== null) {
        inOrder(node.left);
      }
      process.call(this, node);
      if (node.right !== null) {
        inOrder(node.right);
      }
    }
  }

  inOrder(this._root);
}

BinaryTree.prototype.toArray = function() {
  var result = [];

  this.traverse(function (node) {
    result.push(node.value);
  });

  return result;
}

BinaryTree.prototype.toString = function() {
  return this.toArray().toString();
}

BinaryTree.prototype.getSize = function() {
  return this.size;
}

