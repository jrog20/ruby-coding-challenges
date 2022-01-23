# 141. Linked List Cycle

# Given head, the head of a linked list, determine if the linked list has a cycle in it.

# There is a cycle in a linked list if there is some node in the list that can be reached 
# again by continuously following the next pointer. Internally, pos is used to denote the 
# index of the node that tail's next pointer is connected to. 
# Note that pos is not passed as a parameter.


# Return true if there is a cycle in the linked list. Otherwise, return false.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val, _next = nil)
        @val = val
        @next = _next
    end
end

# @param {ListNode} head
# @return {Boolean}

################# Hash Solution #################
# Time Complexity: O(n)
# Space Complexity: O(n)

# def hasCycle(head)
#     visited = {} 
    
#     # Check to make sure we have not reached the end of the list, which would return false
#     while head != nil
#         # If the visited hash contains this head, return True
#         # We have a cycle
#         if visited.key?(head)
#             return TRUE
#         else
#             # If visited does not contain head, add the current head to visited hash
#             # and advance the head pointer by one
#             visited[head] = 1
#             head = head.next
#         end
#     end
#     return FALSE
# end

#################################################


################# Fast & Slow Pointers Solution #################
# Time Complexity: O(n)
# Space Complexity: O(1) - we use two nodes (slow and fast)

def hasCycle(head)
    
    if head.nil?
        return false
    end
    
    # initialize slow and fast pointers that increment at 1 and 2 steps
    slow = head
    fast = head.next
    
    # initiate a while loop until slow and fast pointers meet
    while slow != fast
        # if fast reaches the end of the list, return false (no cycle)
        if fast == nil || fast.next == nil
            return false
        # otherwise, increment slow and fast pointers
        else
            slow = slow.next
            fast = fast.next.next
        end
    end
    # Return True if slow == fast
    return true
end
#################################################

if __FILE__ == $PROGRAM_NAME
    # Testing a linked list without a cycle
    arr1 = ListNode.new(3, ListNode.new(2, ListNode.new(0, ListNode.new(-4))))
    puts "Expecting false"
    puts hasCycle(arr1)

    # Testing a linked list with a cycle
    head = ListNode.new('zero')
    one = ListNode.new('one')
    two = ListNode.new('two')
    three = ListNode.new('three')

    head.next = one
    one.next = two
    two.next = three
    three.next = one
    
    puts "Expecting true"
    puts hasCycle(head)
end