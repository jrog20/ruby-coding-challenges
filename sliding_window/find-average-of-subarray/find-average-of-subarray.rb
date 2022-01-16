# Given an array, find the average of all subarrays of ‘k’ contiguous elements in it.

# Sliding Window approach:
# The efficient way to solve this problem would be to visualize each subarray as a 
# sliding window of ‘5’ elements. This means that we will slide the window by one 
# element when we move on to the next subarray. To reuse the sum from the previous 
# subarray, we will subtract the element going out of the window and add the element 
# now being included in the sliding window. This will save us from going through the 
# whole subarray to find the sum and, as a result, the algorithm complexity will 
# reduce from O(n*k) to O(n).

def find_averages_of_subarrays(arr, k)
    result = []
    windowSum = 0
    windowStart = 0
    # windowEnd = 0

    for windowEnd in arr do
        windowSum += arr[windowEnd] # add the next element
    
        # slide the window, we don't need to slide if we've not hit the required window size of 'k'
        if windowEnd >= k - 1
            result.append(windowSum / k) # calculate the average
            windowSum -= arr[windowStart] # subtract the element going out
            windowStart += 1  # slide the window ahead
        end

    end
  
    result
end

if __FILE__ == $PROGRAM_NAME
    puts "Expect averages of subarrays of size k: 2.2, 2.8, 2.4, 3.6, 2.8"
    puts "=>", find_averages_of_subarrays([1, 3, 2, 6, -1, 4, 1, 8, 2], 5)
end
