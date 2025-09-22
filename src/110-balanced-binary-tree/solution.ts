/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     val: number
 *     left: TreeNode | null
 *     right: TreeNode | null
 *     constructor(val?: number, left?: TreeNode | null, right?: TreeNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.left = (left===undefined ? null : left)
 *         this.right = (right===undefined ? null : right)
 *     }
 * }
 */

function isBalanced(root: TreeNode | null): boolean {
    if(!root) return true;

    const dfs = (node: TreeNode): number => {
        if(!node) return 0;

        let l: number = dfs(node.left), r: number = dfs(node.right);

        if(l === -1 || r === -1 || Math.abs(l - r) > 1) return -1;

        return 1 + Math.max(l, r);
    } 

    return dfs(root) > 0;
};
