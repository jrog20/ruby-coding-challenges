# 206. Reverse Linked List

# Given the head of a singly linked list, reverse the list, and return the reversed list.

# Example 1:
# Input: head = [1,2,3,4,5]
# Output: [5,4,3,2,1]

# Example 2:
# Input: head = [1,2]
# Output: [2,1]

# Example 3:
# Input: head = []
# Output: []

######################################################################################################

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}

######################################################################################################
# Iterative approach
    # We can traverse the list, changing the current node's next pointer to point to its previous element. 
    # Since a node does not have reference to its previous node, we need to first store its previous element. 
    # We also need another pointer to store the next node before changing the reference. 
    # Finally, return the new head reference.

    # Time complexity : O(n)
    # Space complexity : O(1)
######################################################################################################

# Input: head = [1,2,3,4,5]
# Output: [5,4,3,2,1]

def reverse_list(head)
    # Initialize two pointers - previous as nil and current as head
    prev = nil
    curr = head
    # iterate through the linked list
    while curr != nil
        # Before changing next of current, store next node
        next_temp = curr.next
        # Change next of current, store next node
        # this is where the actual reversing happens
        curr.next = prev
        # Move previous and current one step forward
        prev = curr
        curr = next_temp
    end
    prev
end

######################################################################################################



if __FILE__ == $PROGRAM_NAME
    head = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
    puts "Expecting head to equal 5"
    puts reverse_list(head).val
end

