# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
    return [] if points.empty? || k <= 0
    return points if k >= points.length

    dist = ->(x, y) { x**2 + y**2 }
    points.sort_by { |x, y| dist.call(x, y) }.first(k)
end
