/**
 * The knows API is defined in the parent class Relation.
 * isBadVersion(version: number): boolean {
 *     ...
 * };
 */

var solution = function(isBadVersion: any) {
    return function(n: number): number {
        let l: number = 1, r: number = n; 
        let mid: number;
        while(l <= r) {
            mid = l + ((r - l) >> 1);
            if(isBadVersion(mid)){
                r = mid - 1;
            }else {
                l = mid + 1;
            }
        }

        return l;
    };
};
