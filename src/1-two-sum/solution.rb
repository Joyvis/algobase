# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = nums.each_with_index.to_h 
  nums.each_with_index do
    res = target - _1
    return [_2, hash[res]] if hash.key?(res) &&  _2 < hash[res]
  end
end
