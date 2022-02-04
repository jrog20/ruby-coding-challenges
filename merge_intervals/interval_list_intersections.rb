# 986. Interval List Intersections

# You are given two lists of closed intervals, firstList and secondList, 
# where firstList[i] = [starti, endi] and secondList[j] = [startj, endj]. 
# Each list of intervals is pairwise disjoint and in sorted order.

# Return the intersection of these two interval lists.

# A closed interval [a, b] (with a <= b) denotes the set of real numbers x with a <= x <= b.

# The intersection of two closed intervals is a set of real numbers that are either empty or 
# represented as a closed interval. For example, the intersection of [1, 3] and [2, 4] is [2, 3].

# Example 1:

# Input: firstList = [[0,2],[5,10],[13,23],[24,25]], secondList = [[1,5],[8,12],[15,24],[25,26]]
# Output: [[1,2],[5,5],[8,10],[15,23],[24,24],[25,25]]

# Example 2:

# Input: firstList = [[1,3],[5,9]], secondList = []
# Output: []

def interval_intersection(first_list, second_list)
    answer = []
    i = 0
    j = 0
    
    while i < first_list.length and j < second_list.length
        # Check if first_list[i] intersects second_list[j].
        # lo - the startpoint of the intersection
        # hi - the endpoint of the intersection
        lo = [first_list[i][0], second_list[j][0]].max
        hi = [first_list[i][1], second_list[j][1]].min
        if lo <= hi
            answer.append([lo, hi])
        end
        # Remove the interval with the smallest endpoint
        if first_list[i][1] < second_list[j][1]
            i += 1
        else
            j += 1
        end
    end
    answer
end
