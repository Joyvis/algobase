function threeSum(nums: number[]): number[][] {
    nums.sort((x, y) => x - y)
    let res: number[][] = []

    nums.forEach((num, i) => {
        if(i > 0 && num == nums[i-1])
            return

        let l: number = i + 1, r: number = nums.length - 1
        while(l < r) {
            let sum = num + nums[l] + nums[r]
            if(sum == 0) {
                res.push([num, nums[l], nums[r]])
                l++
                r--

                while(l < r && nums[l-1] == nums[l]) l++
                while(l < r && nums[r+1] == nums[r]) r--
            }else if(sum < 0) {
                l++
            }else{
                r--
            }
        }
    })

    return res
};
