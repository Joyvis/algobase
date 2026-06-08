# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  res = []
  nums.each_with_index do |num, i|
    break if num > 0
    next if i > 0 && num == nums[i - 1]

    l, r = i + 1, nums.length - 1
    while l < r
      sum = num + nums[l] + nums[r]
      if sum.zero?
        res << [num, nums[l], nums[r]]
        l += 1
        r -= 1

        l += 1 while l < r && nums[l] == nums[l - 1]
        r -= 1 while l < r && nums[r] == nums[r + 1]
      elsif sum > 0
        r -= 1
      else
        l += 1
      end
    end
  end

  res
end
