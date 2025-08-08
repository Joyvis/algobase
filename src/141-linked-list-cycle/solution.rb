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

    tortoise = head
    hare = head.next
    
    while hare
        return true if tortoise == hare

        tortoise = tortoise.next
        hare = hare.next&.next
    end

    false
end
