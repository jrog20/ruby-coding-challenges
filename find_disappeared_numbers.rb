require 'set'

# 448. Find All Numbers Disappeared in an Array
# Given an array nums of n integers where nums[i] is in the range [1, n], 
# return an array of all the integers in the range [1, n] that do not appear in nums.

# Example 1:
# Input: nums = [4,3,2,7,8,2,3,1]
# Output: [5,6]

# Example 2:
# Input: nums = [1,1]
# Output: [2]

def find_disappeared_numbers(nums)
    nums_set = Set.new(nums)
    missing = []
    count = 1
    length = nums.length + 1
    
    while count < length
        if !nums_set.include?(count)
            missing.push(count)
        end
        count += 1
    end
    missing
end

if __FILE__ == $PROGRAM_NAME
    nums = [4,3,2,7,8,2,3,1]
    puts 'Expect: [5,6]'
    puts 'Output =>', find_disappeared_numbers(nums)
end