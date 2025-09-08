function insert(intervals: number[][], newInterval: number[]): number[][] {
  let res: number[][] = [];
  let i: number = 0, n: number = intervals.length;

  while(i < n && newInterval[0] > intervals[i][1]) {
    res.push(intervals[i]);
    i++;
  }

  while(i < n && intervals[i][0] <= newInterval[1]) {
    newInterval = [
      Math.min(intervals[i][0], newInterval[0]),
      Math.max(intervals[i][1], newInterval[1]),
    ];
    i++;
  }

  res.push(newInterval);

  while(i < n) {
    res.push(intervals[i]);
    i++;
  }

  return res;
};
