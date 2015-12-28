// Write a function on the Array prototype that will transpose a 2-D nested array matrix.
Array.prototype.transpose = function () {
  var columns = [];
  for (var i = 0; i < this[0].length; i++) {
    columns.push([]);
  }

  for (var i = 0; i < this.length; i++) {
    for (var j = 0; j < this[i].length; j++) {
      columns[j].push(this[i][j]);
    }
  }

  return columns;
};

console.log([[0, 1, 2], [3, 4, 5], [6, 7, 8]].transpose());
