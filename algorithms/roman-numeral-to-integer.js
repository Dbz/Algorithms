// Write a function that takes in a string roman numeral and converts it to an integer.
// Loop over string, the secret is that if the first number is less than the number right after. You subtract it.
// Ex. IV => 4 = 1 5 = - 1 + 5
 
/**
 * @param {string} romanNumeral
 * @return {number}
 */
 
var romanNumberalToInteger = function(romanNumeral) {
  var romanNumerals = {
      I: 1,
      V: 5,
      X: 10,
      L: 50,
      C: 100,
      D: 500,
      M: 1000
  };

  var result = 0;

  for (var i = 0; i < romanNumeral.length; i++) {
    if (romanNumerals[romanNumeral[i]] < romanNumerals[romanNumeral[i+1]]) {
      result -= romanNumerals[romanNumeral[i]];
    } else {
      result += romanNumerals[romanNumeral[i]];
    }
  }

  return result;
};
