//Your company built an in-house calendar tool called HiCal. You want to add a feature to see the times in a day when everyone is available. To do this, you’ll need to know when any team is having a meeting. In HiCal, a meeting is stored as a tuple of integers [start_time, end_time] . These integers represent the number of 30-minute blocks past 9:00am. Writ a function that takes an array of meeting times and returns a condensed version.
times = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
//  [(0, 1), (3, 8), (9, 12)]
function hiCal(times){
  times = times.sort(function(a,b){ return a[0] - b[0]; });
  
  var prevStart = times[0][0],
        prevEnd = times[0][1],
    mergedTimes = [];

  for (var i = 1; i < times.length; i++){
      if (times[i][0] <= prevEnd){
          prevEnd = times[i][1];
      } else {
          mergedTimes.push([prevStart, prevEnd]);
          prevStart = times[i][0];
          prevEnd = times[i][1];
      }
  }
  mergedTimes.push([prevStart, prevEnd]);
  return mergedTimes
}