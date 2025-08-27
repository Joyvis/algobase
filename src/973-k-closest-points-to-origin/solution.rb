# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  points.sort_by { |x, y| x**2 + y**2 }.first(k)
end
