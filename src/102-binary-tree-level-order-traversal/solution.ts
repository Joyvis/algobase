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

function levelOrder(root: TreeNode | null): number[][] {
    const result: number[][] = [];
    
    const dfs = (node: TreeNode | null, level: number = 0) => {
        if (!node) return;
        
        result[level] = result[level] || [];
        result[level].push(node.val);
        
        dfs(node.left, level + 1);
        dfs(node.right, level + 1);
    };
    
    dfs(root);
    return result;
}
