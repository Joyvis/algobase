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
