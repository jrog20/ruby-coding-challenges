# The Problem:
# You are given the heads of two sorted linked lists list1 and list2.
# Merge the two lists in a one sorted list. 
# The list should be made by splicing together the nodes of the first two lists.
# Return the head of the merged linked list.

# Recursive solution
# time complexity O(m+n) = O(n)
# space complexity O(m+n) = O(n)

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
    
    head = nil
    
    # If we reach the end of list1, return the remainder of list2
    if list1 == nil
        return list2
    # If we reach the end of list2, return the remainder of list1
    elsif list2 == nil
        return list1
    end
    
    if list1.val <= list2.val
        head = list1
        list1 = list1.next
    else
        head = list2
        list2 = list2.next        
    end
    head.next = merge_two_lists(list1, list2)
    # Return the head
    head
end

if __FILE__ == $PROGRAM_NAME
    list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
    list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))
    
    puts "Expecting [1,1,2,3,4,4]"
    puts merge_two_lists(list1, list2)
end