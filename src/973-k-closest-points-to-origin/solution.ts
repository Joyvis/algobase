function kClosest(points: number[][], k: number): number[][] {
  const dist = (point: number[]) => { return Math.pow(point[0], 2) + Math.pow(point[1], 2); }
  return points.sort((x, y) => { return dist(x) - dist(y); }).slice(0, k)
};
