var Node = function(value, nextNode) {
  this.value = value;
  this.nextNode = nextNode;
}

var Stack = function() {
  this.clear();
}

Stack.prototype.push = function(value) {
  this.head = new Node(value, this.head);
  this.length++;
}

Stack.prototype.pop = function() {
  if(this.head.nextNode === null)
    return null;
  
  var node = this.head;
  this.head = this.head.nextNode;
  this.length--;
  return node.value;
}

Stack.prototype.peek = function() {
  return this.head.value;
}

Stack.prototype.clear = function() {
  this.head   = new Node(null, null);
  this.length = 0;
}

// Using Array

function Stack(){
  this.dataStore = [];
  this.top = 0;
  this.push = push;
  this.pop = pop;
  this.peek = peek;
  this.length = length;
  this.clear = clear;
};

function push(val){
  this.dataStore[this.top++] = val;
};

function pop(){
  return this.dataStore[--this.top];
};

function peek(){
  return this.dataStore[this.top-1];
};

function length(){
  return this.top;
};

function clear(){
  this.top = 0;
};
