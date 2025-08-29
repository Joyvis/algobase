# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  return false unless head&.next

  tortoise = hare = head
  while hare&.next
    tortoise = tortoise.next
    hare = hare.next&.next

    return true if hare == tortoise
  end

  false
end
