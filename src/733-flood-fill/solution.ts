function floodFill(
  image: number[][],
  sr: number,
  sc: number,
  color: number,
  source: number = image[sr][sc]
): number[][] {
  if (sr >= image.length || sr < 0) return image;
  if (sc >= image[0].length || sc < 0) return image;
  if (image[sr][sc] !== source) return image;
  if (image[sr][sc] === color) return image;

  image[sr][sc] = color;
  let directions: number[][] = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0],
  ];
  directions.forEach((d) =>
    floodFill(image, sr + d[0], sc + d[1], color, source)
  );

  return image;
}
