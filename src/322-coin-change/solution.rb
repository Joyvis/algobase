# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  dp = Array.new(amount + 1, Float::INFINITY)
  dp[0] = 0
  1.upto(amount) do |i|
    coins.each do |c|
      if c <= i
        dp[i] = [dp[i], dp[i - c] + 1].min
      end
    end
  end
  return -1 if dp[amount] == Float::INFINITY

  dp[amount]
end
