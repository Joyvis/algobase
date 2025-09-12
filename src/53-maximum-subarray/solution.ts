function maxSubArray(nums: number[]): number {
  let res: number = nums[0], sum: number = 0;
  for (const num of nums) {
    sum = Math.max(sum, 0);
    sum += num;
    res = Math.max(res, sum);
  }
  
  return res;
};
