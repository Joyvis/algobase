function lengthOfLongestSubstring(s: string): number {
  let charSet = new Set<string>();
  let res: number = 0;
  let l: number = 0, r: number = 1;
  for(let char of s) {
    while(charSet.has(char)){
      charSet.delete(s[l]);
      l++;
    }
    charSet.add(char);
    res = Math.max(res, r - l);
    r++;
  }

  return res;
};
