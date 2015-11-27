def make_change(amount, coins)
 result = Array.new(amount + 1, 0)
 result[0] = 1

 coins.each do |coin|
  (coin..amount).each do |higher_amount|
    remainder = higher_amount - coin
    result[higher_amount] += result[remainder]
  end
 end

 result[amount]
end