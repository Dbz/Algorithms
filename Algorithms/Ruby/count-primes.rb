# Count the number of prime numbers less than a non-negative number, n.
#
# @param {Integer} n
# @return {Integer}
def count_primes(n)
  nums = [nil, nil, *2..n]
  (0..Math.sqrt(n)).each do |i|
    (i**2..n).step(i) { |num| nums[num] = nil } if nums[i]
  end
  
  nums.compact.count
end
