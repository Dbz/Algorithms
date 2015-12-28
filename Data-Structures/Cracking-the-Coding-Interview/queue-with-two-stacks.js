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

function Queue(){
  this.inStack = new Stack();
  this.outStack = new Stack();
  this.enqueue = enqueue;
  this.dequeue = dequeue;
  this.peek = peek;
  this.empty = empty;
  this.length = 0;
}

function empty(){
  this.inStack.clear();
  this.outStack.clear();
};

function peek(){
  if (this.outStack.length() > 1){
    return this.outStack.dataStore[length-1];
  } else {
    return this.inStack.dataStore[0];
  }
};

function enqueue(val){
  this.inStack.push(val);
  this.length ++;
}

function dequeue(){
  var val;
  if (this.outStack.length() === 0){
    while (this.inStack.length() > 0){
     val = this.inStack.pop();
     this.outStack.push(val);
    } 
  }
  val = this.outStack.pop();
  return val;
}