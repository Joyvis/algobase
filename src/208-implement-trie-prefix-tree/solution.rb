class TrieNode
  attr_accessor :children, :is_end
  def initialize()
    @children = {}
    @is_end = false
  end
end

class Trie
    def initialize()
      @root = TrieNode.new
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
      node = @root
      word.each_char do
        node.children[_1] ||= TrieNode.new
        node = node.children[_1]
      end
      node.is_end = true
    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
      node = @root
      word.chars.all? do
        if node.children.key? _1
          node = node.children[_1]
          true
        else
          false
        end
      end && node.is_end
    end



=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
      node = @root
      prefix.chars.all? do
        if node.children.key? _1
          node = node.children[_1]
          true
        else
          false
        end
      end
    end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
