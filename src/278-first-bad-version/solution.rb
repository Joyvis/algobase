# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    l, r = 0, n 
    while l <= r
        mid = (l+r).div 2
        if is_bad_version(mid)
            r = mid - 1
        else
            l = mid + 1
        end
    end
    l
end
