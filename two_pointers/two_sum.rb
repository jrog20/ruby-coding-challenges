# The problem: Two Sum

# You are given a sorted array (arr) and a target number (target). You're tasked with figuring out the pair of elements 
# where arr[x] + arr[y] add up to the target number. 

# The brute force solution is to compare each element with every other number, 
# but that's a time complexity of O(n^2).

# The Two Pointer technique makes the time complexity of this solution O(n) and space complexity O(1)

def two_sum(arr, target)
    # initialize two pointers - one at each end of the array
    pointer_one = 0
    pointer_two = arr.length - 1
    sum = 0

    # iterate until we reach the end of the array
    while pointer_one < pointer_two
        # check to see if thes sum of the two pointer values equals the target
        sum = arr[pointer_one] + arr[pointer_two]
        if sum == target
            return True
        # if sum is less than target, move the left pointer one to the right
        elsif sum < target
            pointer_one += 1
        # otherwise (i.e. the sum of the pointers is greater than the target), move the final (right hand)
        # pointer one index to the left.
        else
            pointer_two -= 1
        end
    end
    # if finish iterating through the array and we haven't found a match, return false.
    return False
end

if __FILE__ == $PROGRAM_NAME
    puts "Expecting True"
    puts two_sum([1, 2, 4, 6], 6)
end
