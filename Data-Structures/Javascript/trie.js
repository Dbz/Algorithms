var Node = function(key) { // Trie Nodes
  this.key      = key;
  this.isWord   = false;
  this.children = {};
};

Node.prototype.addChild = function(str) {
  this.children[str] = new Node(str);
};

Node.prototype.hasChild = function(str) {
  var result = false;
  Object.keys(this.children).forEach(function(key) {
    if(key == str)
      result = true;
  });
  return result;
};

var Trie = function() {
  this.head = new Node();
};

Trie.prototype.addWord = function(word) {
  var len         = word.length;
  var substring   = "";
  var currentNode = this.head;
  
  for(var x = 1; x <= len; x++) { // Traverse the Trie
    substring = word.substring(0, x);
    if(!currentNode.hasChild(substring)) // Create node if it doesn't exist
      currentNode.addChild(substring);
    currentNode = currentNode.children[substring];
  }
  currentNode.isWord = true;
};

Trie.prototype.findNode = function(str) { // Returns the node or false if not found
  var len         = str.length;
  var substring   = "";
  var currentNode = this.head;
  
  for(var x = 1; x <= len; x++) {
    substring = str.substring(0, x);
    if(!currentNode.hasChild(substring))
      return false;
    currentNode = currentNode.children[substring];
  }
  return currentNode;
};

Trie.prototype.valid = function(str) { // Returns an array with two elements. If the node exists, and if str is a word
  var node = this.findNode(str);
  if(node)
    return [true, node.isWord];
  return [false, false];
};
