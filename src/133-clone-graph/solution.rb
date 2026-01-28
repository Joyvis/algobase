# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
  visited = {}
  dfs = ->(n) do
    return unless n

    return visited[n] if visited[n]
      
    clone = Node.new(n.val, [])
    visited[n] = clone
    n.neighbors.each { |nb| clone.neighbors << dfs.call(nb) }
    clone
  end

  dfs.call(node)
end
