# 287. Find the Duplicate Number
# Given an array of integers nums containing n + 1 integers where each integer 
# is in the range [1, n] inclusive.

# There is only one repeated number in nums, return this repeated number.

# You must solve the problem without modifying the array nums and use
# only constant extra space.

################ brute force ################
# sort and iterate through array, comparing each element to the next element.
# If a match is found, return the match.
# Time Complexity: O(nlogn)
# Space Complexity: O(logn) or O(n)

# def find_duplicate(nums)
#     nums.sort()
#     i = nums.length
#     while i > 0
#         if nums[i] == nums[i-1]
#             return nums[i]
#         else
#             i -= 1
#         end
#     end
# end
#############################################

# Approach 4.1: Array as HashMap (Recursion)
# Time Complexity: O(n)
# Space Complexity: O(n)

# Approach 4.2: Array as HashMap (Iterative)
# Time Complexity: O(n)
# Space Complexity: O(1)

# Approach 5: Binary Search
# Time Complexity: O(nlogn)
# Space Complexity: O(1)

# Approach 6: Sum of Set Bits
# Time Complexity: O(nlogn)
# Space Complexity: O(1)

# Approach 7: Floyd's Tortoise and Hare (Cycle Detection)
# Time Complexity: O(n)
# Space Complexity: O(1)

# NOT WORKING YET!!!
def find_duplicate(nums)
    
    # Find the intersection point of the two runners.
    tortoise = nums[0]
    hare = nums[0]
    
    while tortoise != hare
        tortoise = nums[tortoise]
        hare = nums[nums[hare]]
    end
    
    # Find the "entrance" to the cycle.
    tortoise = nums[0]
    while tortoise != hare
        tortoise = nums[tortoise]
        hare = nums[hare]
    end
    
    return hare
end


if __FILE__ == $PROGRAM_NAME
    puts "Expecting 2"
    puts find_duplicate([1,3,4,2,2])
end