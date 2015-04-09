//Find the maximum difference in stock prices you can buy/sell from values in arr. The buy value must always come before the sell value.
function stockPrices(arr){
	if (arr.length < 2){
		return false
	}

	var min = arr[0], 
	maxDiff = arr[1] - arr[0];

	for (var i = 1; i < arr.length; i++){
		var potentialProfit = arr[i] - min;
		maxDiff = Math.max(maxDiff, potentialProfit);
		min = Math.min(min, arr[i]);
	}

	return maxDiff;
}