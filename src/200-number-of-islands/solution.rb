# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  return 0 if grid.empty?
  
  rows, cols = grid.size, grid.first.size
  res = 0
  (0...rows).each do |r|
    (0...cols).each do |c|
      next unless grid[r][c] == '1'

      res += 1
      stack = [[r, c]]
      grid[r][c] = '0'

      until stack.empty?
        sr, sc = stack.pop
        [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |dr, dc|
          pr, pc = sr + dr, sc + dc
          next if (pr < 0 || pr >= rows) || (pc < 0 || pc >= cols)

          next unless grid[pr][pc] == '1'

          grid[pr][pc] = '0'
          stack << [pr, pc]
        end
      end
    end
  end

  res
end
