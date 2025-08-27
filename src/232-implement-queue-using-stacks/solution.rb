class MyQueue
    attr_reader :primary_stack, :secondary_stack
    def initialize()
      @primary_stack = [] 
      @secondary_stack = [] 
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      if empty
        primary_stack << x
      else
        until primary_stack.empty?
          secondary_stack << primary_stack.pop
        end

        primary_stack << x

        until secondary_stack.empty?
          primary_stack << secondary_stack.pop
        end
      end
    end


=begin
    :rtype: Integer
=end
    def pop()
      primary_stack.
    end


=begin
    :rtype: Integer
=end
    def peek()
      primary_stack.last 
    end


=begin
    :rtype: Boolean
=end
    def empty() 
      (primary_stack + secondary_stack).empty?
    end
end

# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue.new()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
