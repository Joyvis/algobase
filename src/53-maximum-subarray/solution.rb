# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    res = nums[0]
    sum = 0
    nums.each do
        sum = [0, sum].max
        sum += _1
        res = [res, sum].max
    end
    res
end
