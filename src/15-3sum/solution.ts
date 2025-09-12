function threeSum(nums: number[]): number[][] {
  let lo: number, hi: number, sum: number;
  let n: number = nums.length - 1;
  let res: number[][] = [];

  nums.sort((x, y) => x - y);

  for (let i = 0; i < n - 1; i++) {
    while (nums[i] === nums[i - 1]) i++;

    (lo = i + 1), (hi = n);
    while (lo < hi) {
      sum = nums[i] + nums[lo] + nums[hi];
      if (sum === 0) {
        res.push([nums[i], nums[lo], nums[hi]]);
        lo++;
        hi--;

        while (nums[lo] == nums[lo - 1]) lo++;
        while (nums[hi] == nums[hi + 1]) hi--;
      } else if (sum > 0) {
        hi--;
      } else {
        lo++;
      }
    }
  }

  return res;
}
