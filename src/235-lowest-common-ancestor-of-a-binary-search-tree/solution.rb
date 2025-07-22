# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  dfs = lambda do |node|
    if p.val > node.val && q.val > node.val
      dfs.call(node.right)
    elsif p.val < node.val && q.val < node.val
      dfs.call(node.left)
    else
      return node
    end
  end

  dfs.call(root)
end
