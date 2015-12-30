/**
 * @param {number} num
 * @return {number}
 */

var addDigits = function(num) {
  if (num < 10) return num;
  if (num % 9 === 0) return 9;
  var sum = 0;
  num = num.toString().split("");
  for (var i = 0; i < num.length; i++) {
    sum += Number(num[i]);
  }
  return sum % 9;
}

