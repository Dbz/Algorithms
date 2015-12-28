// Return the nth fibonacci number.
function fib(n){
  if (n < 0) throw 'N can not be below 0!!';
  if (n == 0 || n == 1) return n;
  return fib(n-1) + fib(n-2);
}

// Save (memoize) a computed answer for possible later reuse, rather than recomputing the answer.
function memoizedFib(n, memo){
  if (n < 0) throw 'N can not be below 0!!';
  if (n < 2) return n;
  var memo = memo || {};

  if (memo[n]) return memo[n];
  memo[n] = memoizedFib(n - 1, memo) + memoizedFib(n - 2, memo);
  return memo[n]
};
