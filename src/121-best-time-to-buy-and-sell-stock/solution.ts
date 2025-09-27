function maxProfit(prices: number[]): number {
  let l: number = 0, r: number = 1, res: number = 0, sum: number = 0;
  while(r < prices.length) {
    sum = prices[r] - prices[l];
    res = Math.max(sum, res);
    if(prices[r] < prices[l]) l = r;
    r++;
  }

  return res;
};
