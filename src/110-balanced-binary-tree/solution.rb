# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
  return true unless root

  dfs = lambda do |node|
    return 0 unless node

    l, r = dfs.call(node.left), dfs.call(node.right)
    return - 1 if l == -1 || r == -1 || (l - r).abs > 1

    1 + [l, r].max
  end
  
  dfs.call(root) > 0
end
