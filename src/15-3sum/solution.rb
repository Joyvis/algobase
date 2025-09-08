# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    nums.sort!
    res = [] 
    nums.each_with_index do |num, i|
        next if i > 0 && num == nums[i-1]

        l, r = i + 1, nums.length - 1

        while l < r
            values = [num, nums[l], nums[r]]
            sum = values.sum
            if sum == 0
                res << values

                l += 1
                r -= 1

                l += 1 while l < r && nums[l-1] == nums[l]
                r -= 1 while l < r && nums[r+1] == nums[r]
            elsif sum < 0
                l += 1
            else
                r -= 1
            end
        end
    end

    res
end