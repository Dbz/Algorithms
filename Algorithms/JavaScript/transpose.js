// Write a function on the Array prototype that will transpose a 2-D nested array matrix.
Array.prototype.transpose = function () {
  var columns = [];
  var length  = this[0].length;

  while(length--) {
    columns.push([]);
  }

  for (var i = 0; i < this.length; i++) {
    for (var j = 0; j < this[i].length; j++) {
      columns[j].push(this[i][j]);
    }
  }

  return columns;
};
