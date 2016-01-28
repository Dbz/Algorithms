# write a function to determine the minimum number of coins used that sum to a value
# ex coins = [1, 3, 5] total = 11

def min_change_sum(coins, total)
  totals    = Array.new(total + 1, 1_000_000_000_000)
  totals[0] = 0

  (1..total).each do |i|
    coins.each do |coin|
      if coin <= i && (totals[i - coin] + 1 < totals[i])
        totals[i] = totals[i - coin] + 1
      end
    end
  end

  totals[total]
end
