# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix(mat)
  rows, cols = mat.length, mat.first.length
  res = Array.new(rows) { Array.new(cols) { Float::INFINITY } } 
  0.upto(rows-1) do |i|
    0.upto(cols-1) do |j|
      if mat[i][j] == 0
        res[i][j] = 0
      else
        if i > 0
          res[i][j] = [res[i][j], res[i - 1][j] + 1].min
        end
        
        if j > 0
          res[i][j] = [res[i][j], res[i][j - 1] + 1].min
        end
      end
    end
  end

  (rows-1).downto(0) do |i|
    (cols-1).downto(0) do |j|
      if mat[i][j] == 0
        res[i][j] = 0
      else
        if i < rows - 1
          res[i][j] = [res[i][j], res[i + 1][j] + 1].min
        end
        
        if j < cols - 1
          res[i][j] = [res[i][j], res[i][j + 1] + 1].min
        end
      end
    end
  end
  
  res
end
