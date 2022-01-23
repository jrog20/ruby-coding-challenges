# Given an integer array nums sorted in non-decreasing order, 
# return an array of the squares of each number sorted in non-decreasing order.

# Two Pointer approach
# If we place a pointer at both the left and right ends of a sorted array, 
# the absolute value of each number will tell us if it is larger or smaller than the
# absolute value of the pointer at the other end of the sorted array.
# O(n)

def sorted_squares(nums)
    n = nums.length - 1
    pointer1 = 0
    pointer2 = n
    squares = []

    # compare pointers while the array nums is not empty
    while n >= 0
        # If the absolute value of pointer1 is less than the absolute value of pointer2
        if nums[pointer1].abs < nums[pointer2].abs
            # square the value at pointer2 and place it into the squares array at the n index
            squares[n] = nums[pointer2] ** 2
            # increment pointer2 one index to the left
            pointer2 -= 1
            n -= 1
            # If the absolute value of pointer2 is less than the absolute value of pointer1
        else
            # square the value at pointer1 and place it into the squares array at the n index
            squares[n] = nums[pointer1] ** 2
            # increment pointer1 one index to the right
            pointer1 += 1
            n -= 1
        end
    end
    squares
end

# brute force
# def sorted_squares(nums)
#     squares = []
#     # O(n)
#     nums.each do |num|
#         squares << num**2
#         squares
#     end
#     # O(nlogn)
#     squares.sort()
# end

if __FILE__ == $PROGRAM_NAME
    puts "Expecting [0,1,9,16,100]"
    puts sorted_squares([-4,-1,0,3,10])
end