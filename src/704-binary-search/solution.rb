# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l, r = 0, nums.length-1 
  while l <= r
    mid = (l + r).div(2)
    return mid if nums[mid] == target

    nums[mid] < target ? l = mid + 1 : r = mid - 1
  end
  -1
end

# recursive solution - improved
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target, l = 0, r = nums.length - 1)
    return -1 if l > r

    mid = (l+r).div(2)
    if nums[mid] == target
        return mid
    elsif nums[mid] < target
        l = mid + 1
    else
        r = mid - 1
    end

    search(nums,target, l, r)
end
