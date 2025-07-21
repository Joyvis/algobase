# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  source = image[sr][sc]
  return image if source == color

  dfs = lambda do |row, col|
    return if row < 0 || row >= image.length
    return if col < 0 || col >= image.first.length
    return if color == image[row][col] || source != image[row][col]

    image[row][col] = color

    dfs.call(row + 1, col)
    dfs.call(row - 1, col)
    dfs.call(row, col + 1)
    dfs.call(row, col - 1)
  end

  dfs.call(sr, sc)
  image
end