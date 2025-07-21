# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min, max = 0, 1 
  n = prices.length
  res = 0

  while max < n
    sum = prices[max] - prices[min]
    res = [res, sum].max
    min = max if prices[max] < prices[min]
    max += 1
  end

  res
end
