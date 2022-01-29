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

# Time O(3n) = O(n)
# Space O(2n) = O(n)
def is_palindrome(head)
    vals = []
    
    # convert linked list into an array
    current_node = head
    while current_node != nil
        vals.push(current_node.val)
        current_node = current_node.next
    end
    
    # reverse the vals array
    reversed_vals = []
    
    vals.each do |val|
        reversed_vals.unshift(val)
    end
    
    # return true if the two arrays are equal to each other, otherwise false
    return vals == reversed_vals
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(2, ListNode.new(1, nil)))))
    puts "Expecting true"
    puts is_palindrome(head)
end