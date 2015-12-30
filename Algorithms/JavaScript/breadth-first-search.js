/* A Queue object for queue-like functionality over JavaScript arrays. */
var Queue = function() {
  this.items = [];
};
Queue.prototype.enqueue = function(obj) {
  this.items.push(obj);
};
Queue.prototype.dequeue = function() {
  return this.items.shift();
};
Queue.prototype.isEmpty = function() {
  return this.items.length === 0;
};

/*
 * Performs a breadth-first search on a graph
 * @param {array} graph - Graph, represented as adjacency lists.
 * @param {number} source - The index of the source vertex.
 * @returns {array} Array of objects describing each vertex, like
 *     [{distance: _, predecessor: _ }]
 */
var doBFS = function(graph, source) {
    var bfsInfo = [];

    for (var i = 0; i < graph.length; i++) {
      bfsInfo[i] = {
        distance: null,
        predecessor: null 
      };
    }

    bfsInfo[source].distance = 0;

    var queue = new Queue();
    queue.enqueue(source);

    while(!queue.isEmpty()) {
      var node = queue.dequeue();
      for (var i = 0; i < graph[node].length; i++) {
        var neighbor = graph[node][i];
        if (bfsInfo[neighbor].distance === null) {
          bfsInfo[neighbor].distance = bfsInfo[node].distance + 1;
          bfsInfo[neighbor].predecessor = node;
          queue.enqueue(neighbor);
        }
      }
    }
    
  return bfsInfo;
};
