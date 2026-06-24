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
def is_valid_bst(root)
  is_valid = ->(node, lo = nil, hi = nil) do
    return true unless node

    return false if lo && lo >= node.val
    return false if hi && hi <= node.val

    is_valid.call(node.left, lo, node.val) &&
      is_valid.call(node.right, node.val, hi)
  end

  is_valid.call(root)
end
