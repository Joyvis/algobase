# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
  rows, cols = grid.size, grid.first.size
  minutes = 0
  freshes = 0
  queue = []

  (0...rows).each do |row|
    (0...cols).each do |col|
      queue << [row, col] if grid[row][col] == 2
      freshes += 1 if grid[row][col] == 1
    end
  end

  return 0 if freshes.zero?

  directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]

  until queue.empty? || freshes == 0
    q_size = queue.size
    minutes += 1
    q_size.times do
      r, c = queue.shift
      directions.each do |dr, dc|
        nr, nc = r + dr, c + dc

        next if nr < 0 || nr >= rows || nc < 0 || nc >= cols
        
        next unless grid[nr][nc] == 1

        grid[nr][nc] = 2
        freshes -= 1
        queue << [nr, nc]
      end
    end
  end

  freshes.zero? ? minutes : -1
end
