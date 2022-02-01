# 252. Meeting Rooms
# Given an array of meeting time intervals where intervals[i] = [starti, endi], 
# determine if a person could attend all meetings.

# Example 1:

# Input: intervals = [[0,30],[5,10],[15,20]]
# Output: false

# Example 2:

# Input: intervals = [[7,10],[2,4]]
# Output: true
###############################################################################################
# We want to return true if there are no intervals that overlap
# 


###############################################################################################
def can_attend_meetings(intervals)
    
end

if __FILE__ == $PROGRAM_NAME
    puts 'Expecting false'
    puts can_attend_meetings([[0,30],[5,10],[15,20]])

    puts 'Expecting true'
    puts can_attend_meetings([[7,10],[2,4]])
end