# How do you identify when to use the Merge Intervals pattern?

#     If you’re asked to produce a list with only mutually exclusive intervals
#     If you hear the term “overlapping intervals”
    
# 56. Merge Intervals
# Given an array of intervals where intervals[i] = [starti, endi], 
# merge all overlapping intervals, and return an array of the non-overlapping intervals 
# that cover all the intervals in the input.

# Example 1:

# Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
# Output: [[1,6],[8,10],[15,18]]
# Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].

# Example 2:

# Input: intervals = [[1,4],[4,5]]
# Output: [[1,5]]
# Explanation: Intervals [1,4] and [4,5] are considered overlapping.

###############################################################################################
# First, we can sort the intervals by their start value. 
# Then insert the first interval into a new merged array.
# We then iterate through the remaining intervals to evaluate each (current) interval against 
# the interval before it (previous) to see if we need to merge:
    # If the current interval STARTS after the previous interval ENDS, they do not overlap, 
        # so we push the interval onto the array. i.e. current[start] > previous[end]
    # Otherwise, (current[start] < previous[end]) they do overlap and we merge them by updating 
        # the END of the previous interval if it is less than the end of the current interval. 
        # i.e. if current[end] > previous[end]
            # previous[end] = current[end]
###############################################################################################
def merge(intervals)
    
    # sort the intervals by their start value
    intervals.sort
    
    merged = []
    
    intervals.each do |interval|
        # if the merged array is empty or if the current interval does not overlap with the previous, 
        # i.e. the current interval STARTS after the previous interval ENDS, append it
        # current[start] > previous[end]
        if merged.empty? || interval[0] > merged[-1][1]
            merged.append(interval)
        else
            # Otherwise, (current[start] < previous[end]) they do overlap and we merge them by updating 
            # the END of the previous interval if it is less than the end of the current interval. 
            # i.e. if current[end] > previous[end]
            merged[-1][1] = interval[1]
        end
    end
    
    merged
end
###############################################################################################

if __FILE__ == $PROGRAM_NAME
    puts 'Expecting [[1,6],[8,10],[15,18]]'
    puts merge([[1,3],[2,6],[8,10],[15,18]])
end
