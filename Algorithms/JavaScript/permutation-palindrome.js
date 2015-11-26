//Write an efficient function that checks whether any permutation ↴ of an input string is a palindrome ↴ .
function palinPermutation(str){
  var strMap = {};

  for (var i = 0; i < str.length; i++){
    if (strMap[str[i]]){
      strMap[str[i]] = false;
    } else {
      strMap[str[i]] = true;
    }
  }

  var odds = 0;

  for (var letter in strMap){
    if (strMap[letter] === true){
      odds++;
    }
  } 
  return odds === 1
}