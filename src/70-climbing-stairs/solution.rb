# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp = Array.new(n + 1, 1)
  2.upto(n) { dp[_1] = dp[_1 - 1] + dp[_1 - 2] }
  dp.last
end
