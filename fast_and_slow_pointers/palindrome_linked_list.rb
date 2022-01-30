# 234. Palindrome Linked List
# Given the head of a singly linked list, return true if it is a palindrome.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {Boolean}

################################################################
# Time O(3n) = O(n)
# Space O(2n) = O(n)
# def is_palindrome(head)
#     vals = []
    
#     # convert linked list into an array
#     current_node = head
#     while current_node != nil
#         vals.push(current_node.val)
#         current_node = current_node.next
#     end
    
#     # return true if the array is equal to the reversed array
#     return vals == vals.reverse
# end
################################################################
# Reverse second half in place

# Time O(3n) = O(n)
# Space O(1)

def is_palindrome(head)
    
    return true if head == nil
    
    # Find the end of the first half
    # using the two pointer technique - when the fast pointer reaches the end,
    # the slow pointer has reached the middle
    first_half_end = end_of_first_half(head)
    
    # Reverse the second half, starting at the next node from the first half end
    second_half_start = reverse_list(first_half_end.next)
    
    # Determine whether or not there is a palindrome
    pointer1 = head
    pointer2 = second_half_start
    result = true
    
    # continue iterating until result is not true (not a palindrome) or we reach the end 
    while result && pointer2 != nil
        # return false if pointer1 does not equal pointer2
        return false if pointer1.val != pointer2.val
        # increment both pointers
        pointer1 = pointer1.next
        pointer2 = pointer2.next
    end
    
    # Restore the list
    first_half_end.next = reverse_list(second_half_start)
    
    # Return the result
    return result
end 

def end_of_first_half(head)
    # Find the end of the first half
    # using the two pointer technique - when the fast pointer reaches the end,
    # the slow pointer has reached the middle. Slow pointer = end of first half
    fast = head
    slow = head
    
    while fast.next != nil && fast.next.next != nil
        fast = fast.next.next
        slow = slow.next
    end
    
    return slow
end

def reverse_list(head)
    previous = nil
    current = head
    
    while current != nil
        next_temp = current.next
        # set the current node to the previous node
        current.next = previous
        # set previous to current
        previous = current
        # set current to the next node
        current = next_temp
    end
    # return the head, which is the last node, called previous
    return previous
end
################################################################

if __FILE__ == $PROGRAM_NAME
    head = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(2, ListNode.new(1, nil)))))
    puts "Expecting true"
    puts is_palindrome(head)
end