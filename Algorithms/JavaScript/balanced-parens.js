// Balanced Parens: Write a function that takes an arithmetic expression as an argument and returns true or false
// for an expression where a parenthesis is missing.

function balancedParens(input) {
  var stack = new Stack();

  for (var i = 0; i < input.length; i++) {
    var c = input[i];
    if (c === '(' || c === '{' || c === '[') {
      stack.push(c);
    } else if (c === ')' || c === '}' || c === ']') {
      var last = stack.pop();
      if (!last || (c === ')' && last !== '(') || (c === '}' && last !== '{') || (c === ']' && last !== '[')) {
        return false;
      }
    }
  }
  
return (stack.length() === 0);
}
