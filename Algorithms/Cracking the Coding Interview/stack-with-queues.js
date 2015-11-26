/**
 * @constructor
 */
var Stack = function() {
    this.queue = new Queue();
};

/**
 * @param {number} x
 * @returns {void}
 */
Stack.prototype.push = function(x) {
    var nextQueue = new Queue();
    nextQueue.enqueue(x);
    nextQueue.enqueue(this.queue);
    this.queue = nextQueue;
};

/**
 * @returns {void}
 */
Stack.prototype.pop = function() {
    var x = this.queue.dequeue();
    this.queue = this.queue.dequeue();
    return x;
};

/**
 * @returns {number}
 */
Stack.prototype.top = function() {
    return this.queue.top();
};

/**
 * @returns {boolean}
 */
Stack.prototype.empty = function() {
    return this.queue.length() === 0;
};


// Wrapper class for Queue. Uses simple list operations
var Queue = function() {
    this.lst = [];
}

Queue.prototype.enqueue = function(x) {
    this.lst.push(x);
}

Queue.prototype.dequeue = function() {
    return this.lst.shift();
}

Queue.prototype.length = function() {
    return this.lst.length;
}

Queue.prototype.top = function() {
    return this.lst[0];
}