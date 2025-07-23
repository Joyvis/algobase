# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  res = []
  i, n = 0, intervals.length
  while i < n
    if new_interval.last < intervals[i].first
      res << new_interval
      return res + intervals[i..n-1]
    elsif new_interval.first > intervals[i].last
      res << intervals[i]
    else
      new_interval = [
        [intervals[i].first, new_interval.first].min,
        [intervals[i].last, new_interval.last].max
      ]
    end

    i += 1
  end
  res << new_interval
  res
end
