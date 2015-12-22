function fib(n){
  if (n < 0) throw 'N can not be below 0!!'
  if (n == 0 || n == 1) return n
  return fib(n-1) + fib(n-2)
}

1 1 2 3 4
