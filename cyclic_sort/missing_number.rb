# 268. Missing Number

# Given an array nums containing n distinct numbers in the range [0, n], 
# return the only number in the range that is missing from the array.

# Example 1:

# Input: nums = [3,0,1]
# Output: 2
# Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 
# 2 is the missing number in the range since it does not appear in nums.

# Example 2:

# Input: nums = [0,1]
# Output: 2
# Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 
# 2 is the missing number in the range since it does not appear in nums.

# Example 3:

# Input: nums = [9,6,4,2,3,5,7,0,1]
# Output: 8
# Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 
# 8 is the missing number in the range since it does not appear in nums.

#######################################################################################
# First we check the first and last elements to see if they are correct.
# Once we confirm that the value at the first and last index are correct, we iterate
# over the array to find and return the missing value.
#######################################################################################

def missing_number(nums)
    
    nums.sort!

    # confirm n is at the last index
    if nums[-1] != nums.length
        # return nums.length
        return nums.length
    end
    # confirm 0 is at the first index
    if nums[0] != 0
        return 0
    end
    
    # if the values at the first and last indexes are correct,
    # the missing number is between 0 and n
    i = 1
    nums.each do |num|
        expected_num = nums[i-1] + 1
        if nums[i] != expected_num
            return expected_num
        end
        i += 1
    end
end

if __FILE__ == $PROGRAM_NAME
    nums = [9,6,4,2,3,5,7,0,1]
    puts 'Expecting 8'
    puts missing_number(nums)
end
