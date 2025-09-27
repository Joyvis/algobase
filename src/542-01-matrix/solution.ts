function updateMatrix(mat: number[][]): number[][] {
  let m: number = mat.length, n: number = mat[0].length;
  let res: number[][] = Array.from({ length: m }, () => Array(n).fill(1_000_000));

  for(let i = 0; i < m; i++) {
    for(let j = 0; j < n; j++) {
      if(mat[i][j] === 0){
        res[i][j] = 0;
      } else {
        if(i > 0) res[i][j] = Math.min(res[i][j], res[i - 1][j] + 1);
        if(j > 0) res[i][j] = Math.min(res[i][j], res[i][j - 1] + 1);
      }
    }
  }

  for(let i = m - 1; i >= 0; i--) {
    for(let j = n - 1; j >= 0; j--) {
      if(mat[i][j] === 0){
        res[i][j] = 0;
      } else {
        if(i < m - 1) res[i][j] = Math.min(res[i][j], res[i + 1][j] + 1);
        if(j < n - 1) res[i][j] = Math.min(res[i][j], res[i][j + 1] + 1);
      }
    }
  }

  return res;
};
