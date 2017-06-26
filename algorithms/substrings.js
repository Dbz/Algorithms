// Add a method to the String prototype to return a list of all substrings.

String.prototype.substrings = function () {
  var substrings = [];

  for (var start = 0; start < this.length; start++) {
    for (var len = start; len < this.length; len++) {
      substrings.push(this.slice(start, len + 1));
    }
  }

  return substrings;
};
