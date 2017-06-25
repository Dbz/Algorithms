// Write a function that takes an amount of money and a list of coin denominations, and determine
// the number of ways to to make the amount of money using the given coin denominations

function makeChange(amount, coins) {

  var waysOfDoingNCents = [];
  for (var i = 0; i < amount + 1; i++) {
    waysOfDoingNCents[i] = 0;
  }

  waysOfDoingNCents[0] = 1;

  for (var coin = 0; coin < coins.length; coin++) {
    for (var higherAmt = coins[coin]; higherAmt < amount + 1; higherAmt++) {
      higherAmtRemainder = higherAmt - coins[coin];
      waysOfDoingNCents[higherAmt] += waysOfDoingNCents[higherAmtRemainder];
    }
  }

  return waysOfDoingNCents[amount];
}
