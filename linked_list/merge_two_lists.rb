# The Problem:
# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists in a one sorted list. 
# The list should be made by splicing together the nodes of the first two lists.
# Return the head of the merged linked list.

# Recursive solution
# time complexity O(m+n) = O(n)
# space complexity O(1)

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

def merge_two_lists(list1, list2)
    # Keep track of the head and tail of the new list
    head = ListNode.new()
    tail = head
    # Iterate until reach the end of one list
    while list1 != nil && list2 != nil
    
        # compare the heads of both lists
        if list1.val < list2.val
            # Add that node to merged list
            tail.next = list1
            # Move list1 pointer to the next node in this list
            list1 = list1.next
        else
            # Add that node to merged list
            tail.next = list2
            # Move list1 pointer to the next node in this list
            list2 = list2.next  
        end
        # Move the tail to the end of the new list
        tail = tail.next
    end
    
    # If the other list contains nodes, make tail.next point to remaining nodes
    tail.next = list1 == nil ? list2 : list1
    
    # Return the head.next (head.next, as head is pointing to the empty list node)
    head.next
end

if __FILE__ == $PROGRAM_NAME
    list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
    list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))
    
    puts "Expecting [1,1,2,3,4,4]"
    puts merge_two_lists(list1, list2)
end