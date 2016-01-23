# Count the number of prime numbers less than a non-negative number, n.
#
# @param {Integer} number
# @return {Integer}

def count_primes(n)
  primes = [nil, nil, *2..n]
  (0..Math.sqrt(n)).each do |i|
    (i**2..n).step(i) { |composite_number| primes[composite_number] = nil } unless primes[i].nil?
  end
  
  primes.compact.count
end
