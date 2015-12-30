//Using a stack class, determine if a string is a palindrome.

function Palindrome(str) {
  var stack = new Stack(),
      rWord = "";

  for (var i = 0; i < str.length; i++) {
    stack.push(str[i]);
  }

  while (stack.length() !== 0) {
    rWord += stack.pop();
  }

  return str === rWord;
}

