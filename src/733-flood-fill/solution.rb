# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
   source = image[sr][sc]
   dfs = lambda do |r, c|
    return if r < 0 || r >= image.length
    return if c < 0 || c >= image.first.length
    return if image[r][c] != source || image[r][c] == color

    image[r][c] = color
    directions = [[0, 1], [0,-1], [1,0], [-1,0]]
    directions.each { dfs.call(r+_1.first, c+_1.last) }
   end

   dfs.call(sr, sc)
   image
end
